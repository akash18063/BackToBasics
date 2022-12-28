#include <iostream>
#include <thread>
#include <condition_variable>

using namespace std;


class Semaphore
{
    public:
    Semaphore(int max_available) : max_available(max_available), taken(0)
    {}

    void acquire()
    {
        unique_lock<mutex> lock(mu);
        if(max_available == taken)
            cv.wait(lock, [this](){ return this->taken < this->max_available; });
        taken++;
    }

    void release()
    {
        lock_guard<mutex> lock(mu);
        --taken;
        cv.notify_all();
    }

    private:
    int max_available;
    int taken;
    std::mutex mu;
    condition_variable cv;

};
int main()
{ 
    return 0;
}