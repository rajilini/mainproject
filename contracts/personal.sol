pragma solidity ^0.4.0;
contract personal{
    
   struct student{
       bytes32 sid;
       bytes32 name;
       uint64 gender;
       bytes32 dob;
       bytes32 addr;
       bytes32 fname;
       uint64 phoneno;
       uint64 class;
       uint64 division;
       bool transferred;
   }
   
mapping (bytes32 => student) public students;
bytes32[] public studentAccts;

 uint public  stucount;
address owner;
function personal()public{
    owner=msg.sender;
    stucount=0;
}

 function setStudent(bytes32 sid, bytes32 name,uint64 gender,bytes32 dob,bytes32 addr,bytes32 fname,uint64 phone,uint64 class,uint64 division) public{
 if(msg.sender==owner){
       students[sid].sid=sid;
       students[sid].name=name;
       students[sid].gender=gender;
       students[sid].dob=dob;
       students[sid].addr=addr;
       students[sid].fname=fname;
       students[sid].phoneno=phone;
       students[sid].class=class;
       students[sid].division=division;
       students[sid].transferred=false;
	studentAccts.push(_bytes32) -1;
	stucount++;
 }
       
}
   function getstudentName(bytes32 sid)public constant returns(bytes32){
     return students[sid].name;  
   }
   function getstudentGender(bytes32 sid)public constant returns(uint64){
     return students[sid].gender;  
   }
    function getstudentDob(bytes32 sid)public constant returns(bytes32){
     return students[sid].dob;  
   }
   function getstudentAddr(bytes32 sid)public constant returns(bytes32){
     return students[sid].addr;  
   }
   function getstudentFname(bytes32 sid)public constant returns(bytes32){
     return students[sid].fname;  
   }
   function getstudentPhoneno(bytes32 sid)public constant returns(uint64){
     return students[sid].phoneno;  
   }
   function getstudentClass(bytes32 sid)public constant returns(uint64){
     return students[sid].class;  
   }
 function getstudentDivision(bytes32 sid)public constant returns(uint64){
     return students[sid].division;  
   }  
 function promoteStudent(bytes32 sid)public{
     if(msg.sender==owner&& !students[sid].transferred){
         if(students[sid].class<12){
             students[sid].class++;
         }
         
     }
else
          require(false);
 }  

 function changeAddress(bytes32 sid,bytes32 caddr)public{
     if(msg.sender==owner&& !students[sid].transferred){
         students[sid].addr=caddr;
     }
else
                require(false);
 }
 function changePhone(bytes32 sid,uint64 cphone)public{
     if(msg.sender==owner&& !students[sid].transferred){
         students[sid].phoneno=cphone;
     }
else
                require(false);
 }
function transferStudent(bytes32 sid)public{
    if(msg.sender==owner && !students[sid].transferred){
        students[sid].transferred=true;
    }
else
                require(false);
}
function checkStudent(bytes32 sid)public constant returns(bool){
    if(students[sid].sid==sid){
    return(students[sid].transferred);}
    else{
        return(true);
    }
    }
    

}