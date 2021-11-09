#include<iostream>
#include<cstring>
#include<ctime>
using namespace std;

int a[100]={5,25,1,10,99,52,10,1,23,68}, n=10;

void qSort(int l, int r)
{
	int i, j, mind;
	i=l;
	j=r;
	//mind=a[(l+r)/2];
	srand(int(time(0)));
	mind=a[rand()%(r-l+1)+l];
	while(i<=j){
		while(a[i]<mind)
			++i;
		while(a[j]>mind)
			--j;
		if(i<=j){
			swap(a[i],a[j]);
			++i;
			--j;
		}
	}
	if(l<j)
		qSort(l,j);
	if(i<r)
		qSort(i,r);
}

void mSort(int l, int r)
{
	if(l==r)
		return;
	int i, j, mind;
	mind=(l+r)/2;
	mSort(l,mind);
	mSort(mind+1,r);
	int m[100], f=l;
	i=l;
	j=mind+1;
	while(i<=mind && j<=r){
		if(a[i]<=a[j]){
			m[f++]=a[i];
			++i;
		}
		else{
			m[f++]=a[j];
			++j;
		}
	}
	while(i<=mind){
		m[f++]=a[i];
		++i;
	}
	while(j<=r){
		m[f++]=a[j];
		++j;
	}
	for(int k=l; k<=r; ++k)
		a[k]=m[k];
}

int main()
{
	//XuanZePaiXu
	/*
	for(int i=0; i<n; ++i){
		int k=i;
		for(int j=i+1; j<n; ++j){
			if(a[k]>a[j])
				k=j;
		}
		if(k!=i)
			swap(a[i],a[k]);
	}
	*/

	//MaoPaoPaiXu
	/*
	for(int i=0; i<n; ++i){
		for(int j=0; j<n-1-i; ++j){
			if(a[j]>a[j+1])
				swap(a[j],a[j+1]);
		}
	}
	*/

	//ChaRuPaiXu
	/*
	int k, f;
	for(int i=0; i<n; ++i){
		k=a[i];
		f=0;
		while(k>a[f] && f<i)
			f++;
		if(f<i){
			for(int j=i; j>f; --j)
				a[j]=a[j-1];
			a[f]=k;
		}
	}
	*/
	
	//TongPai
	/*
	int tp[100];
	memset(tp,0,sizeof(tp));
	for(int i=0; i<n; ++i){
		tp[a[i]]++;
	}
	for(int i=0; i<100; ++i){
		while(tp[i]){
			cout<<i<<" ";
			tp[i]--;
		}
	}
	*/

	//KuaiSuPaiXu
	//qSort(0,n-1);
	
	//GuiBingPaiXu
	mSort(0,n-1);


	for(int i=0; i<n; ++i)
		cout<<a[i]<<" ";
	cout<<endl;
	return 0;
}
