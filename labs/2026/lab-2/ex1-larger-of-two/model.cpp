#include <iostream>
using namespace std;
int larger(int a, int b){
    if(a > b){
        return a;
    }
    else{
            return b;
        }

}

int main(){
    int x=9,y=15;
    cout<<larger(x, y);
    
    return 0;
}