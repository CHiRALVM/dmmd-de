//<continuation number="0">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0820.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;

//�����[�g����(2/3)
//�������̃t�@�C���ŃL�����|�C���g����B�@���[�g�ȊO�B
//�L�����|�C���g�̋������Ȃ���΂����Ń��[�g�m��B
//$DM_ROUTE=1(�g��),2(�m�C�Y),3(�~���N),4(�N���A)
//�������Ă���L��������dm0811�`dm0814��\��
//$DM_ROUTE_SEL=[0, 0,0,0,0]
//�L�����������A�g���A�m�C�Y�A�~���N�A�N���A

//�@���[�g�m�莞�A�Ƒ��S�A�����P�P�̂P�U�p�^�[��

	Array($DM_ROUTE_SEL,0, 0,0,0,0);$pMax=0;
	if($DM_ROUTE<5){
		//N2��+�ŕ�����A�����
		//$DM_ROUTE_SEL[1]=1*$�g���I����1+1*$�g���I����2+1*$�g���I����3+1*$�g���I����4;
		//$DM_ROUTE_SEL[2]=1*$�m�C�Y�I����1+1*$�m�C�Y�I����2+1*$�m�C�Y�I����3+1*$�m�C�Y�I����4;
		//$DM_ROUTE_SEL[3]=1*$�~���N�I����1+1*$�~���N�I����2+1*$�~���N�I����3+1*$�~���N�I����4;
		//$DM_ROUTE_SEL[4]=1*$�N���A�I����1+1*$�N���A�I����2+1*$�N���A�I����3+1*$�N���A�I����4;
	
if($�g���I����1>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}
if($�g���I����2>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}
if($�g���I����3>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}
if($�g���I����4>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}

if($�m�C�Y�I����1>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}
if($�m�C�Y�I����2>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}
if($�m�C�Y�I����3>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}
if($�m�C�Y�I����4>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}

if($�~���N�I����1>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}
if($�~���N�I����2>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}
if($�~���N�I����3>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}
if($�~���N�I����4>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}

if($�N���A�I����1>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
if($�N���A�I����2>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
if($�N���A�I����3>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
if($�N���A�I����4>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
/*
//�����[�g�m�F�p�i���q�j
CreateText("tt01", 25001, 0,  0, 1000, 50, "DM_ROUTE=<VALUE name=$DM_ROUTE>|");
$tmp=$DM_ROUTE_SEL[1];
CreateText("tt11", 25001, 0, 50, 1000, 50, "DM_ROUTE_SEL[1]=<VALUE name=$tmp>|");
$tmp=$DM_ROUTE_SEL[2];
CreateText("tt21", 25001, 0,100, 1000, 50, "DM_ROUTE_SEL[2]=<VALUE name=$tmp>|");
$tmp=$DM_ROUTE_SEL[3];
CreateText("tt23", 25001, 0,150, 1000, 50, "DM_ROUTE_SEL[3]=<VALUE name=$tmp>|");
$tmp=$DM_ROUTE_SEL[4];
CreateText("tt24", 25001, 0,200, 1000, 50, "DM_ROUTE_SEL[4]=<VALUE name=$tmp>|");
Draw();WaitKey();
*/
		//�|�C���g�g�b�v�Ƒ����i�Ƒ����S�j
		if($DM_ROUTE_SEL[1]>$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[1]>$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[1]>$DM_ROUTE_SEL[4]){
			$DM_ROUTE=1;
		}else if($DM_ROUTE_SEL[2]>$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[2]>$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[2]>$DM_ROUTE_SEL[4]){
			$DM_ROUTE=2;
		}else if($DM_ROUTE_SEL[3]>$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[3]>$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[3]>$DM_ROUTE_SEL[4]){
			$DM_ROUTE=3;
		}else if($DM_ROUTE_SEL[4]>$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[4]>$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[4]>$DM_ROUTE_SEL[3]){
			$DM_ROUTE=4;
		}
	
		//��������(�����S���P�A�����R���S�A�����Q���U�A�g�[�^�����P�P)
		if($DM_ROUTE==0){
			//�ő吔���o��
			$pMax=0;
			$pMax=$DM_ROUTE_SEL[1];
			if($pMax<$DM_ROUTE_SEL[2]){$pMax=$DM_ROUTE_SEL[2];}
			if($pMax<$DM_ROUTE_SEL[3]){$pMax=$DM_ROUTE_SEL[3];}
			if($pMax<$DM_ROUTE_SEL[4]){$pMax=$DM_ROUTE_SEL[4];}
			if($pMax>0){
				if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[3]==$DM_ROUTE_SEL[4]){
					Array($DM_ROUTE_SEL,4, 1,1,1,1);$DM_ROUTE=40;//�����S�l
				}else if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[3]){//�����R�l
					Array($DM_ROUTE_SEL,3, 1,1,1,0);$DM_ROUTE=31;
				}else if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[4]){//�����R�l
					Array($DM_ROUTE_SEL,3, 1,1,0,1);$DM_ROUTE=32;
				}else if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[4]){//�����R�l
					Array($DM_ROUTE_SEL,3, 1,0,1,1);$DM_ROUTE=33;
				}else if($DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[4]){//�����R�l
					Array($DM_ROUTE_SEL,3, 0,1,1,1);$DM_ROUTE=34;
				}else if($pMax==$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]){//�����Q�l
					Array($DM_ROUTE_SEL,2, 1,1,0,0);$DM_ROUTE=21;
				}else if($pMax==$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[3]){//�����Q�l
					Array($DM_ROUTE_SEL,2, 1,0,1,0);$DM_ROUTE=22;
				}else if($pMax==$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[4]){//�����Q�l
					Array($DM_ROUTE_SEL,2, 1,0,0,1);$DM_ROUTE=23;
				}else if($pMax==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[3]){//�����Q�l
					Array($DM_ROUTE_SEL,2, 0,1,1,0);$DM_ROUTE=24;
				}else if($pMax==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[4]){//�����Q�l
					Array($DM_ROUTE_SEL,2, 0,1,0,1);$DM_ROUTE=25;
				}else if($pMax==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[3]==$DM_ROUTE_SEL[4]){//�����Q�l
					Array($DM_ROUTE_SEL,2, 0,0,1,1);$DM_ROUTE=26;
				}
			}
		}
	}

	if($DM_ROUTE==1){	$GameName = "dm0821.nss";
	}else if($DM_ROUTE==2){	$GameName = "dm0822.nss";
	}else if($DM_ROUTE==3){	$GameName = "dm0823.nss";
	}else if($DM_ROUTE==4){	$GameName = "dm0824.nss";
	}else if($DM_ROUTE==5){	$GameName = "dm0830.nss";
	}else if($DM_ROUTE==21){	$GameName = "dm0822k1.nss";
	}else if($DM_ROUTE==22){	$GameName = "dm0822k2.nss";
	}else if($DM_ROUTE==23){	$GameName = "dm0822k3.nss";
	}else if($DM_ROUTE==24){	$GameName = "dm0822k4.nss";
	}else if($DM_ROUTE==25){	$GameName = "dm0822k5.nss";
	}else if($DM_ROUTE==26){	$GameName = "dm0822k6.nss";
	}else if($DM_ROUTE==31){	$GameName = "dm0823k1.nss";
	}else if($DM_ROUTE==32){	$GameName = "dm0823k2.nss";
	}else if($DM_ROUTE==33){	$GameName = "dm0823k3.nss";
	}else if($DM_ROUTE==34){	$GameName = "dm0823k4.nss";
	}else if($DM_ROUTE==40){	$GameName = "dm0824k1.nss";
	}else {		$GameName = "dm0830.nss";//�ی�
	}

/*
����ύX�ɂ��ȉ����g�p
	}else if($DM_ROUTE_SEL[1]==1){	$GameName = "dm0821.nss";
	}else if($DM_ROUTE_SEL[2]==1){	$GameName = "dm0822.nss";
	}else if($DM_ROUTE_SEL[3]==1){	$GameName = "dm0823.nss";
	}else if($DM_ROUTE_SEL[4]==1){	$GameName = "dm0824.nss";
*/
/*
//�����[�g�m�F�p�i���q�j
Delete("tt*");
CreateText("tt01", 25001, 0,  0, 300, 50, "DM_ROUTE=<VALUE name=$DM_ROUTE>|");$tmp=$DM_ROUTE_SEL[0];
CreateText("tt11", 25001, 0, 50, 300, 50, "DM_ROUTE_SEL[0]=<VALUE name=$tmp>|");
CreateText("tt21", 25001, 0,100, 300, 50, "pMax=<VALUE name=$pMax>|");
Draw();WaitKey();
*/
}


scene dm0820.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104021_5_���t��䏊");
	FadeBG(0,true);

	DeleteAllSt(0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Once Granny spoke&, no one else said a word&.

Everyone left the living room with a meek look on their 
face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���@���[�g�m�肵�Ă��Ȃ��E�����|�C���g�̃L�����������ꍇ���̃L�����̍s���悪�킩��\�L���������܂��B


//�|�C���g�������Ȃ��ꍇ�A��ԑO�Ƀ��[�g���m��


//�����t�@�C��["dm0830.nss"]�����������ꍇ
//�����t�@�C��["dm0821.nss"]�L�����|�C���g�����F�g���ŕ\��
//�����t�@�C��["dm0822.nss"]�L�����|�C���g�����F�m�C�Y�ŕ\��
//�����t�@�C��["dm0823.nss"]�L�����|�C���g�����F�~���N�ŕ\��
//�����t�@�C��["dm0824.nss"]�L�����|�C���g�����F�N���A�ŕ\��
//�����t�@�C��["dm0830.nss"]//�ی�




//	ClearFadeAll(1000, true);

}
