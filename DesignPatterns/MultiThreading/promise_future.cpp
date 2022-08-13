#include <iostream>
#include <future>

using namespace std;

void factorial(int n)
{
    int res = 1;
    for(int i=n; i>1; i--)
    {
        res*=i;
    }

    cout<<"result is : " << res << endl;
}

int retFactorial(int n)
{
    int res = 1;
    for(int i=n; i>1; i--)
        res*=i;

    cout<<"result is : " << res << endl;
    return res;
}

int _retFactorial(std::future<int>& f)
{
    int res = 1;
    int n = f.get(); // If we dont fullfill the promise to pass the value in future we will get exception std::future_errc::broken_promise 
    for(int i=n; i>1; i--)
        res*=i;

    cout<<"result is : " << res << endl;
    return res;
}


int main()
{
    //advance mutithreading concepts
    std::thread t1(factorial, 4);
    t1.join();

    /*Incase we want to get pass value from child thread to the parent thread*/
    std::future<int> fu = std::async(std::launch::async | std::launch::deferred , retFactorial, 4); // async func may or maynot create another thread(deferred) hence the launch param
    auto res = fu.get(); // get can be called on the future only once


    /*Incase we want to pass value from the parent thread to the child thread at some time in future (eg. we are waiting om some other thread to return the value)*/
    std::promise<int> p;
    std::future<int> f = p.get_future();

    std::future<int> _fu = std::async(std::launch::async | std::launch::deferred , _retFactorial, std::ref(f)); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    
    // do something else
    std::this_thread::sleep_for(chrono::milliseconds(20));
    
    // pass value to the func in future
    p.set_value(4);

    // In case the promise cannot be fullfilled this sets a specific exection error message rather than std broken promise error
    //p.set_exception(std::make_exception_ptr(std::runtime_error("sorry, cannot fullfill promise")));

    //get the result from the child thread in future
    int _res = _fu.get();
    
    /*
    Suppose we want to launch multiple threads to compute the factorial we cannot pass in the same future
    std::future<int> _fu = std::async(std::launch::async | std::launch::deferred , _retFactorial, std::ref(f)); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    std::future<int> _fu1 = std::async(std::launch::async | std::launch::deferred , _retFactorial, std::ref(f)); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    std::future<int> _fu2 = std::async(std::launch::async | std::launch::deferred , _retFactorial, std::ref(f)); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    std::future<int> _fu3 = std::async(std::launch::async | std::launch::deferred , _retFactorial, std::ref(f)); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    this is not allowed as we can all get on one future only once
    One solution could be to have 10 promises and 10 futures
    std lib provides a better solution shown below
    
   std::promise<int> p1;
   std::future<int> f1 = p1.get_future();
   std::shared_future<int> sf = f1.share();
   std::future<int> _fu = std::async(std::launch::async | std::launch::deferred , _retFactorial, sf); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    std::future<int> _fu1 = std::async(std::launch::async | std::launch::deferred , _retFactorial, sf); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    std::future<int> _fu2 = std::async(std::launch::async | std::launch::deferred , _retFactorial, sf); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
    std::future<int> _fu3 = std::async(std::launch::async | std::launch::deferred , _retFactorial, sf); // this implies that we don't have the value to pass in factorial func but we promise that we will send value in future
   shared future can be passed by value
   this can be used in broadcast kind of communication
   */
  return 0;
}