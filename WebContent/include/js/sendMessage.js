var CONTNET_2000_BYTE_MSG   = "메시지 입력은 2000바이트까지만 가능합니다.";
var CONTNET_80_BYTE_MSG   	= "메시지 입력은 80바이트까지만 가능합니다.";
var REGIST_2000_BYTE        = "2000바이트까지만 등록이 가능합니다.";
var MSG_LEN_2000            = 2000; //장문 메시지 길이
var MSG_LEN_80              = 80; //단문 메시지 길이
var TOG_WORD                = '%0D';

jQuery(document).ready(function(){
	$j('#p_SUBJECT').attr("style", "border: 2px solid #BDBDBD;");
	$j('#l_SUBJECT').attr("style", "color: #BDBDBD");
	
	$j("#p_MSG").bind("keyup",function(){
		checkShrtMsgLen(this);
	})
});

function checkShrtMsgLen(obj) {
    var iCounts = getByteLen(obj);
    if (iCounts > MSG_LEN_80) {
        //변수의 길이를 체크하여 특정 byte가 넘으면 길이를 잘라준다.
        if (iCounts > MSG_LEN_2000) {
            alert(CONTNET_2000_BYTE_MSG);
            obj.value = cutText(obj,MSG_LEN_2000);
            iCounts = getByteLen(obj);
        }
        $j('#p_SUBJECT').removeAttr('disabled');
        $j('#p_SUBJECT').attr("style", "border: 2px solid #6EA5E1;");
    	$j('#l_SUBJECT').attr("style", "color: #6EA5E1");
        $j('label#mtType').addClass('lms').html('LMS');
        $j('label#mtLimit').addClass('lms').html('2000 BYTE');
    } else {
    	$j('#p_SUBJECT').val('');
    	$j('#p_SUBJECT').attr('disabled','disabled');
    	$j('#p_SUBJECT').attr("style", "border: 2px solid #BDBDBD;");
    	$j('#l_SUBJECT').attr("style", "color: #BDBDBD");
    	$j('label#mtType').removeClass('lms').html('SMS');
    	$j('label#mtLimit').removeClass('lms').html('80 BYTE');
    }

    //창에 총 바이트 수를 표시
    $j('#COUNTBYTE').val(iCounts);
    return iCounts;
}

//한글일 경우에는 2byte를 그외의 문자는 1byte로 계산하여 return 해준다.
function getByteLen(obj,sMsgLng) {

    var sMsg       = obj.value;
    var sTmpMsg    = '';
    var sTmpMsgLen = 0;
    var sOneChar   = '';

    //총 바이트를 저장 하는 변수
    var iCounts=0;

    if (sMsgLng != null) {
        sTmpMsg = new String(sMsgLng);
    }
    else
        sTmpMsg = new String(sMsg);
    sTmpMsgLen  = sTmpMsg.length;

    for (k = 0 ;k < sTmpMsgLen ;k++) {
        sOneChar = sTmpMsg.charAt(k);
        if (escape(sOneChar) == TOG_WORD) {
//            iCounts++;
        }
        else if (escape(sOneChar).length > 4) {
            iCounts += 2;
        }
        else  {
            iCounts++;
        }
    }

    return iCounts;
}

//특정 바이트 이상 되면 변수의 길이를 자른다.
function cutText(obj,sByteLen) {

    var sTmpMsg         = '';
    var iTmpMsgLen      = 0;
    var sOneChar        = '';
    var iCount          = 0;
    var sOneCharNext    = '';

    sTmpMsg = new String(obj.value);
    iTmpMsgLen = sTmpMsg.length;

    for (var k = 0 ;k < iTmpMsgLen ; k++) {
        sOneChar = sTmpMsg.charAt(k);
        sOneCharNext = sTmpMsg.charAt(k+1);
        if (escape(sOneChar) == TOG_WORD) {
//            iCount++;
            if (iCount > sByteLen-1) {
                sTmpMsg = sTmpMsg.substring(0,k);
                break;
            }
        }
        else if (escape(sOneChar).length > 4) {
            iCount += 2;
        }
        else {
            iCount++;
        }
        if (iCount > sByteLen) {
            sTmpMsg = sTmpMsg.substring(0,k);
            break;
        }
    }
    return sTmpMsg;
}