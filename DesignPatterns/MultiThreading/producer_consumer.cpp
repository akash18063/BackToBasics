#include <iostream>
#include <deque>
#include <thread>
#include <mutex>
#include <unistd.h>
#include <condition_variable>

using namespace std;
//global dequeue and mutex
deque<int> q;
mutex mu;
condition_variable cv;


/*
    Busy waiting example
*/ 

// void producer()
// {
//     int count = 0;
//     while(true)
//     {
//         std::unique_lock<mutex> locker(mu);
//         q.push_front(count);
//         locker.unlock();
//         sleep(2);
//         count++;
//     }
// }

// void consumer()
// {
//     while(true)
//     {
//         std::unique_lock<mutex> locker(mu);
//         if(q.empty())
//         {
//             locker.unlock();
//             sleep(2);
//             continue;
//         }
//         int data = q.back();
//         q.pop_back();
//         locker.unlock();
//     }
// }

/*
    using conditional variables
*/

void producer()
{
    int count = 0;
    while(true)
    {
        unique_lock<mutex> locker(mu);
        q.push_front(count);
        locker.unlock();
        cout<<"produced value : " << count <<endl;
        count++;
        cv.notify_all();
        sleep(4);
    }
}

void consumer()
{
    while(true)
    {
        unique_lock<mutex> locker(mu);
        if(q.empty())
        {
            cv.wait(locker, [](){ return !q.empty(); });
        }
        int data = q.back();
        q.pop_back();
        locker.unlock();
        cout<<"consumed value : " << data <<endl;
    }
}


int main()
{
    thread producer_thread(producer);
    thread consumer_thread(consumer);
    producer_thread.join();
    consumer_thread.join();
}