pragma solidity ^0.4.0;

contract studentcce{
    
    struct subject{
        bytes32 subname;
        uint8 exam1;
        uint8 exam2;
        uint8 test1;
        uint8 test2;
        uint8 ass1;
        uint8 ass2;
        uint8 proj1;
        uint8 proj2;
        uint8 total;
        
    }
    struct academy{
        bytes32 sid;
        subject s1;
        subject s2;
        subject s3;
        subject s4;
        subject s5;
        subject s6;
    }
    struct cce{
        bytes32 subname;
        uint mark;
        bytes32 grade;
    }
    struct report{
        bytes32 sid;
        uint class;
        cce sub1;
        cce sub2;
        cce sub3;
        cce sub4;
        cce sub5;
        cce sub6;
    }
    
    address owner;
    mapping(bytes32=>academy)z;
    mapping(bytes32=>report)stu;
function studentcce() public{
    owner=msg.sender;
}
    function setsubjects(bytes32 sid,bytes32 sub1,bytes32 sub2,bytes32 sub3,bytes32 sub4,bytes32 sub5,bytes32 sub6)public{
        if(msg.sender==owner){
        z[sid].s1.subname=sub1;
        z[sid].s2.subname=sub2;
        z[sid].s3.subname=sub3;
        z[sid].s4.subname=sub4;
        z[sid].s5.subname=sub5;
        z[sid].s6.subname=sub6;
        }
    }
    function settest1(bytes32 sid,uint8 subno,uint8 t1)public{
        if(msg.sender==owner){
            if(t1>=0 &&t1<=10){
                if (subno==1)
                 {
                    z[sid].s1.total-=z[sid].s1.test1;
                    z[sid].s1.test1=t1;
                     z[sid].s1.total+=z[sid].s1.test1;
                 }
           
               if (subno==2)
                 {
                    z[sid].s2.total-=z[sid].s2.test1;
                    z[sid].s2.test1=t1;
                     z[sid].s2.total+=z[sid].s2.test1;
                 }
            
                 if (subno==3)
                 {
                    z[sid].s3.total-=z[sid].s3.test1;
                    z[sid].s3.test1=t1;
                     z[sid].s3.total+=z[sid].s3.test1;
                 }
            
                 if (subno==4)
                 {
                    z[sid].s4.total-=z[sid].s4.test1;
                    z[sid].s4.test1=t1;
                     z[sid].s4.total+=z[sid].s4.test1;
                 }
            
                 if (subno==5)
                 {
                    z[sid].s5.total-=z[sid].s5.test1;
                    z[sid].s5.test1=t1;
                     z[sid].s5.total+=z[sid].s5.test1;
                 }
           
                 if (subno==6)
                 {
                    z[sid].s6.total-=z[sid].s6.test1;
                    z[sid].s6.test1=t1;
                     z[sid].s6.total+=z[sid].s6.test1;
                 }
            }
            else
                require(false);
        }
         }
        
    
    
    function settest2(bytes32 sid,uint8 subno,uint8 t2)public{
        if(msg.sender==owner){
        if(t2>=0 && t2<=10){ 
            if (subno==1){
                z[sid].s1.total-=z[sid].s1.test2;
                z[sid].s1.test2=t2;
                 z[sid].s1.total+=z[sid].s1.test2;
            }
             if (subno==2){
                    z[sid].s2.total-=z[sid].s1.test2;
                    z[sid].s2.test2=t2;
                     z[sid].s2.total+=z[sid].s2.test2;
                 }
            if (subno==3){
                    z[sid].s3.total-=z[sid].s3.test2;
                    z[sid].s3.test2=t2;
                     z[sid].s3.total+=z[sid].s3.test2;
                 }
             if (subno==4){
                    z[sid].s4.total-=z[sid].s4.test2;
                    z[sid].s4.test2=t2;
                     z[sid].s4.total+=z[sid].s4.test2;
                 }
            if (subno==5){
                    z[sid].s5.total-=z[sid].s5.test2;
                    z[sid].s5.test2=t2;
                     z[sid].s5.total+=z[sid].s5.test2;
                 }
             if (subno==6){
                    z[sid].s6.total-=z[sid].s6.test2;
                    z[sid].s6.test2=t2;
                     z[sid].s6.total+=z[sid].s6.test2;
                 }
        
        }
            else
                require(false);
        }        
        
    }
     function setass1(bytes32 sid,uint8 subno,uint8 a1)public{
        if(msg.sender==owner){
        if(a1>=0 && a1<=10){
            if(subno==1){
                z[sid].s1.total -=z[sid].s1.ass1;
                z[sid].s1.ass1=a1;
                 z[sid].s1.total+=z[sid].s1.ass1;
            }
            if(subno==2){
                z[sid].s2.total -=z[sid].s2.ass1;
                z[sid].s2.ass1=a1;
                 z[sid].s2.total+=z[sid].s2.ass1;
            }
            if(subno==3){
                z[sid].s3.total -=z[sid].s3.ass1;
                z[sid].s3.ass1=a1;
                 z[sid].s3.total+=z[sid].s3.ass1;
            }
            if(subno==4){
                z[sid].s4.total -=z[sid].s4.ass1;
                z[sid].s4.ass1=a1;
                 z[sid].s4.total+=z[sid].s4.ass1;
            }
            if(subno==5){
                z[sid].s5.total -=z[sid].s5.ass1;
                z[sid].s5.ass1=a1;
                 z[sid].s5.total+=z[sid].s5.ass1;
            }
            if(subno==6){
                z[sid].s6.total -=z[sid].s6.ass1;
                z[sid].s6.ass1=a1;
                 z[sid].s6.total+=z[sid].s6.ass1;
            }
        } 
        else
        require(false);
        }
     }
     function setass2(bytes32 sid,uint8 subno,uint8 a2)public{
         if(msg.sender==owner){
          if(a2>=0 &&a2<=10){
              if(subno==1){
                z[sid].s1.total-=z[sid].s1.ass2;
                z[sid].s1.ass2=a2;
                 z[sid].s1.total+=z[sid].s1.ass2;
              }
              if(subno==2){
                z[sid].s2.total-=z[sid].s2.ass2;
                z[sid].s2.ass2=a2;
                 z[sid].s2.total+=z[sid].s2.ass2;
              }
              if(subno==3){
                z[sid].s3.total-=z[sid].s3.ass2;
                z[sid].s3.ass2=a2;
                 z[sid].s3.total+=z[sid].s3.ass2;
              }
              if(subno==4){
                z[sid].s4.total-=z[sid].s4.ass2;
                z[sid].s4.ass2=a2;
                 z[sid].s4.total+=z[sid].s4.ass2;
              }
              if(subno==5){
                z[sid].s5.total-=z[sid].s5.ass2;
                z[sid].s5.ass2=a2;
                 z[sid].s5.total+=z[sid].s5.ass2;
              }
              if(subno==6){
                z[sid].s6.total-=z[sid].s6.ass2;
                z[sid].s6.ass2=a2;
                 z[sid].s6.total+=z[sid].s6.ass2;
              }
         }
        else
        require(false);
         }
     }
       function setproj1(bytes32 sid,uint8 subno,uint8 p1)public{
           if(msg.sender==owner){
            if(p1>=0 &&p1<=10){
                if(subno==1){
                    z[sid].s1.total-=z[sid].s1.proj1;
                    z[sid].s1.proj1=p1;
                     z[sid].s1.total+=z[sid].s1.proj1;
                }
                if(subno==2){
                    z[sid].s2.total-=z[sid].s2.proj1;
                    z[sid].s2.proj1=p1;
                     z[sid].s2.total+=z[sid].s2.proj1;
                }
                if(subno==3){
                    z[sid].s3.total-=z[sid].s3.proj1;
                    z[sid].s3.proj1=p1;
                     z[sid].s3.total+=z[sid].s3.proj1;
                }
                if(subno==4){
                    z[sid].s4.total-=z[sid].s4.proj1;
                    z[sid].s4.proj1=p1;
                     z[sid].s4.total+=z[sid].s4.proj1;
                }
                if(subno==5){
                    z[sid].s5.total-=z[sid].s5.proj1;
                    z[sid].s5.proj1=p1;
                     z[sid].s5.total+=z[sid].s5.proj1;
                }
                if(subno==6){
                    z[sid].s6.total-=z[sid].s6.proj1;
                    z[sid].s6.proj1=p1;
                     z[sid].s6.total+=z[sid].s6.proj1;
                }
            }
        else
        require(false);
           }
       }
        function setproj2(bytes32 sid,uint8 subno,uint8 p2)public{
            if(msg.sender==owner){
             if(p2>=0&&p2<=10){
                 
                 if(subno==1){
                     z[sid].s1.total-=z[sid].s1.proj2;
                     z[sid].s1.proj2=p2;
                    z[sid].s1.total+=z[sid].s1.proj2;
                 }
                 if(subno==2){
                     z[sid].s2.total-=z[sid].s2.proj2;
                     z[sid].s2.proj2=p2;
                    z[sid].s2.total+=z[sid].s2.proj2;
                 }
                 if(subno==3){
                     z[sid].s3.total-=z[sid].s3.proj2;
                     z[sid].s3.proj2=p2;
                    z[sid].s3.total+=z[sid].s3.proj2;
                 }
                 if(subno==4){
                     z[sid].s4.total-=z[sid].s4.proj2;
                     z[sid].s4.proj2=p2;
                    z[sid].s4.total+=z[sid].s4.proj2;
                 }
                 if(subno==5){
                     z[sid].s5.total-=z[sid].s5.proj2;
                     z[sid].s5.proj2=p2;
                    z[sid].s5.total+=z[sid].s5.proj2;
                 }if(subno==6){
                     z[sid].s6.total-=z[sid].s6.proj2;
                     z[sid].s6.proj2=p2;
                    z[sid].s6.total+=z[sid].s6.proj2;
                 }
            }
        else
        require(false);
            }
        }
        
        function setexam1(bytes32 sid,uint8 subno,uint8 e1)public{
            if(e1>=0 &&e1<=100){
                if (subno==1)
                 {
                    z[sid].s1.exam1=e1;
                 }
           
               if (subno==2)
                 {
                   
                    z[sid].s2.exam1=e1;
                    
                 }
            
                 if (subno==3)
                 {
                    
                    z[sid].s3.exam1=e1;
                    
                 }
            
                 if (subno==4)
                 {
                    
                    z[sid].s4.exam1=e1;
                     
                 }
            
                 if (subno==5)
                 {
                   
                    z[sid].s5.exam1=e1;
                    
                 }
           
                 if (subno==6)
                 {
                   
                    z[sid].s6.exam1=e1;
                    
                 }
            }
            else
                require(false);
         }
        
    function setexam2(bytes32 sid,uint8 subno,uint8 e2)public{
            if(e2>=0 &&e2<=100){
                if (subno==1)
                 {
                    z[sid].s1.exam2=e2;
                 }
           
               if (subno==2)
                 {
                   
                    z[sid].s2.exam2=e2;
                    
                 }
            
                 if (subno==3)
                 {
                    
                    z[sid].s3.exam2=e2;
                    
                 }
            
                 if (subno==4)
                 {
                    
                    z[sid].s4.exam2=e2;
                     
                 }
            
                 if (subno==5)
                 {
                   
                    z[sid].s5.exam2=e2;
                    
                 }
           
                 if (subno==6)
                 {
                   
                    z[sid].s6.exam2=e2;
                    
                 }
            }
            else
                require(false);
         }
        
    
        function getdatasub1(bytes32 sid)public constant returns(uint8,uint8,uint8,uint8,uint8,uint8,uint8){
            return(z[sid].s1.test1,z[sid].s1.test2,z[sid].s1.ass1,z[sid].s1.ass2,z[sid].s1.proj1,z[sid].s1.proj2,z[sid].s1.total);
        }
        function getdatasub2(bytes32 sid)public constant returns(uint8,uint8,uint8,uint8,uint8,uint8,uint8){
            return(z[sid].s2.test1,z[sid].s2.test2,z[sid].s2.ass1,z[sid].s2.ass2,z[sid].s2.proj1,z[sid].s2.proj2,z[sid].s2.total);
        }
        function getdatasub3(bytes32 sid)public constant returns(uint8,uint8,uint8,uint8,uint8,uint8,uint8){
            return(z[sid].s3.test1,z[sid].s3.test2,z[sid].s3.ass1,z[sid].s3.ass2,z[sid].s3.proj1,z[sid].s3.proj2,z[sid].s3.total);
        }
        function getdatasub4(bytes32 sid)public constant returns(uint8,uint8,uint8,uint8,uint8,uint8,uint8){
            return(z[sid].s4.test1,z[sid].s4.test2,z[sid].s4.ass1,z[sid].s4.ass2,z[sid].s4.proj1,z[sid].s4.proj2,z[sid].s4.total);
        }
        function getdatasub5(bytes32 sid)public constant returns(uint8,uint8,uint8,uint8,uint8,uint8,uint8){
            return(z[sid].s5.test1,z[sid].s5.test2,z[sid].s5.ass1,z[sid].s5.ass2,z[sid].s5.proj1,z[sid].s5.proj2,z[sid].s5.total);
        }
        function getdatasub6(bytes32 sid)public constant returns(uint8,uint8,uint8,uint8,uint8,uint8,uint8){
            return(z[sid].s6.test1,z[sid].s6.test2,z[sid].s6.ass1,z[sid].s6.ass2,z[sid].s6.proj1,z[sid].s6.proj2,z[sid].s6.total);
        }
 function getsub1exam1(bytes32 sid)public constant returns(uint8){
     return(z[sid].s1.exam1);
 }       
 function getsub2exam1(bytes32 sid)public constant returns(uint8){
     return(z[sid].s2.exam1);
 }       
 function getsub3exam1(bytes32 sid)public constant returns(uint8){
     return(z[sid].s3.exam1);
 }
 function getsub4exam1(bytes32 sid)public constant returns(uint8){
     return(z[sid].s4.exam1);
 }
 function getsub5exam1(bytes32 sid)public constant returns(uint8){
     return(z[sid].s5.exam1);
 }
 function getsub6exam1(bytes32 sid)public constant returns(uint8){
     return(z[sid].s6.exam1);
 }
 function getsub1exam2(bytes32 sid)public constant returns(uint8){
     return(z[sid].s1.exam2);
 }
  function getsub2exam2(bytes32 sid)public constant returns(uint8){
     return(z[sid].s2.exam2);
 }       
 function getsub3exam2(bytes32 sid)public constant returns(uint8){
     return(z[sid].s3.exam2);
 }
 function getsub4exam2(bytes32 sid)public constant returns(uint8){
     return(z[sid].s4.exam2);
 }
 function getsub5exam2(bytes32 sid)public constant returns(uint8){
     return(z[sid].s5.exam2);
 }
 function getsub6exam2(bytes32 sid)public constant returns(uint8){
     return(z[sid].s6.exam2);
 }
 function set_cgpa(bytes32 sid)public{
     
    bytes32 cgpa;
    uint fassesssub;
    uint sassesssub;
    uint totalmark;
    if(msg.sender==owner){
      fassesssub=(z[sid].s1.total/60*100)*40/100;
      sassesssub=((z[sid].s1.exam1+z[sid].s1.exam2)/200*100)*60/100;
      totalmark=fassesssub+sassesssub;
     if(totalmark>=90){
         cgpa="A";}
         else{
         if(totalmark>=80){
             cgpa="B";}
             else{ 
             if(totalmark>=70){
                 cgpa="C";}
             }
         }
         stu[sid].sub1.subname=z[sid].s1.subname;
         stu[sid].sub1.mark=totalmark;
         stu[sid].sub1.grade=cgpa;
     
     fassesssub=(z[sid].s2.total/60*100)*40/100;
     sassesssub=((z[sid].s2.exam1+z[sid].s2.exam2)/200*100)*60/100;
     totalmark=fassesssub+sassesssub;
     if(totalmark>=90){
         cgpa="A";}
         else{
         if(totalmark>=80){
             cgpa="B";}
             else{ 
             if(totalmark>=70){
                 cgpa="C";}
             }
         }
         stu[sid].sub2.subname=z[sid].s2.subname;
         stu[sid].sub2.mark=totalmark;
         stu[sid].sub2.grade=cgpa;
     
      fassesssub=(z[sid].s3.total/60*100)*40/100;
      sassesssub=((z[sid].s3.exam1+z[sid].s3.exam2)/200*100)*60/100;
      totalmark=fassesssub+sassesssub;
     if(totalmark>=90){
         cgpa="A";}
         else{
         if(totalmark>=80){
             cgpa="B";}
             else{ 
             if(totalmark>=70){
                 cgpa="C";}
             }
         }
         stu[sid].sub3.subname=z[sid].s3.subname;
         stu[sid].sub3.mark=totalmark;
         stu[sid].sub3.grade=cgpa;
     
      fassesssub=(z[sid].s4.total/60*100)*40/100;
      sassesssub=((z[sid].s4.exam1+z[sid].s4.exam2)/200*100)*60/100;
      totalmark=fassesssub+sassesssub;
     if(totalmark>=90){
         cgpa="A";}
         else{
         if(totalmark>=80){
             cgpa="B";}
             else{ 
             if(totalmark>=70){
                 cgpa="C";}
             }
         }
         stu[sid].sub4.subname=z[sid].s4.subname;
         stu[sid].sub4.mark=totalmark;
         stu[sid].sub4.grade=cgpa;
     
      fassesssub=(z[sid].s5.total/60*100)*40/100;
      sassesssub=((z[sid].s5.exam1+z[sid].s5.exam2)/200*100)*60/100;
      totalmark=fassesssub+sassesssub;
      if(totalmark>=90){
         cgpa="A";}
         else{
         if(totalmark>=80){
             cgpa="B";}
             else{ 
             if(totalmark>=70){
                 cgpa="C";}
             }
         }
         stu[sid].sub5.subname=z[sid].s5.subname;
         stu[sid].sub5.mark=totalmark;
         stu[sid].sub5.grade=cgpa;
     
      fassesssub=(z[sid].s6.total/60*100)*40/100;
      sassesssub=((z[sid].s6.exam1+z[sid].s6.exam2)/200*100)*60/100;
      totalmark=fassesssub+sassesssub;
     if(totalmark>=90){
         cgpa="A";}
         else{
         if(totalmark>=80){
             cgpa="B";}
             else{ 
             if(totalmark>=70){
                 cgpa="C";}
             }
         }
         stu[sid].sub6.subname=z[sid].s6.subname;
         stu[sid].sub6.mark=totalmark;
         stu[sid].sub6.grade=cgpa;
    }
}
function settot(bytes32 sid)public{
    z[sid].s1.total=z[sid].s1.test1+z[sid].s1.test2+z[sid].s1.ass1+z[sid].s1.ass2+z[sid].s1.proj1+z[sid].s1.proj2;
    z[sid].s2.total=z[sid].s2.test1+z[sid].s2.test2+z[sid].s2.ass1+z[sid].s2.ass2+z[sid].s2.proj1+z[sid].s2.proj2;
    z[sid].s3.total=z[sid].s3.test1+z[sid].s3.test2+z[sid].s3.ass1+z[sid].s3.ass2+z[sid].s3.proj1+z[sid].s3.proj2;
    z[sid].s4.total=z[sid].s4.test1+z[sid].s4.test2+z[sid].s4.ass1+z[sid].s4.ass2+z[sid].s4.proj1+z[sid].s4.proj2;
    z[sid].s5.total=z[sid].s5.test1+z[sid].s5.test2+z[sid].s5.ass1+z[sid].s5.ass2+z[sid].s5.proj1+z[sid].s5.proj2;
    z[sid].s6.total=z[sid].s6.test1+z[sid].s6.test2+z[sid].s6.ass1+z[sid].s6.ass2+z[sid].s6.proj1+z[sid].s6.proj2;
 }
    struct nonacademy{
       bytes32 sid;
        uint8 obed;
        uint8 polite;
        uint8 attstudy;
        uint8 attfriend;
        uint8 attteacher;
    }
   
   mapping(bytes32=>nonacademy)x;
   
   function setdata2(bytes32 sid,uint8 ob,uint8 po,uint8 attstudy,uint8 attfri,uint8 atttcr)public{
       
       x[sid].sid=sid;
       if (ob>=1 && ob<=5)
       x[sid].obed=ob;
       else
       require(false);
       if (po>=1 && po<=5)
       x[sid].polite=po;
       else
       require(false);
       if (attstudy>=1 && attstudy<=5)
       x[sid].attstudy=attstudy;
       else
       require(false);
       if (attfri>=1 && attfri<=5)
       x[sid].attfriend=attfri;
       else
       require(false);
       if (atttcr>=1 && atttcr<=5)
       x[sid].attteacher=atttcr;
       else
       require(false);
       
   }
   function getdata2(bytes32 sid)constant public returns(uint8,uint8,uint8,uint8,uint8){
       return (x[sid].obed,x[sid].polite,x[sid].attstudy,x[sid].attfriend,x[sid].attteacher);
   }
   
 
    struct special{
       bytes32 sid;
       bytes32 title;
       uint8 level;
       uint8 grade;
    }
   
   mapping(bytes32=>special)y;
   
   function setdata3(bytes32 sid,bytes32 t,uint8 l,uint8 g)public{
       
       y[sid].sid=sid;
       y[sid].title=t;
       y[sid].level=l;
       y[sid].grade=g;
   }
   function getdata3(bytes32 sid)constant public returns(bytes32,uint8,uint8){
       return (y[sid].title,y[sid].level,y[sid].grade);
   }
   function tokenadd(bytes32 sid) public payable{
       uint tokenno=0;
      uint8 gtot1= z[sid].s1.total+z[sid].s2.total+z[sid].s3.total+z[sid].s4.total+z[sid].s5.total+z[sid].s6.total;
        if (gtot1>=300)
            tokenno++;
        if (gtot1>=320)
            tokenno+=2;
        if (gtot1>=340)
            tokenno+=2;
        uint gtot2=x[sid].obed+x[sid].polite+x[sid].attstudy+ x[sid].attfriend+x[sid].attteacher;
        if (gtot2>=20)
            tokenno++;
        if (gtot2>=22)
            tokenno++;
        if (gtot2==25)
            tokenno+=3;
       
   }
   
}