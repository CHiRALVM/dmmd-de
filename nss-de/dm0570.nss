//<continuation number="90">
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


scene dm0570.nss_MAIN
{
	//���F�R�C�������ړ��i���X�g�Ȃ��j
	CoilReceAdd("dm0001","Home",true);
	CoilReceAdd("dm0002","Haga-san",true);
	CoilReceAdd("dm0320","Delivery Works",true);
	CoilReceAdd("dm0570_01","Koujaku",false);
	CoilReceAdd("dm0570_02","Koujaku",false);
	CoilReceAdd("dm0570_03","Koujaku",false);
	CoilReceAdd("dm0003","Haga-san",false);
	CoilReceAdd("dm0570_04","Koujaku",false);
	CoilReceAdd("dm0570_05","Koujaku",false);
	CoilReceAdd("dm0570_06","Koujaku",false);
	CoilReceAdd("dm0570_07","Koujaku",false);
	CoilReceAdd("dm0570_08","Koujaku",false);

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


	CoilReceAdd("dm0570_11","�g��",true);
	CoilReceAdd("dm0570_12","�g��",true);


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0580.nss";

}


scene dm0570.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg106021_5_�p�r������");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//==============================================
//���ȍ~�A����
//==============================================
//���w�k���R�C���m�F�x�i���o�⋭�ӏ��j

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���H�R�C�����M����Z�b�g
	CoilPhone_MissSet(368,30);
	//���F�R�C������ݒu
	CoilPhone_RaceSet(368,30);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���H�R�C�����M����\��
	CoilPhone_MissFade();

	//���R�C���҂�
	CoilWait();

	Wait(500);

//cono�u���o�F�R�C�����o����ۂɂ͂������wait�͏����Ă��������v
	//Wait(1000);

//�����o�F�R�C�����o

	//���F�R�C������\��
	CoilPhone_RaceFade();

	//���F�R�C������ǉ�
	//$CoilReceSoon=true;
	CoilReceAdd2("dm0570_11","Koujaku",false);


	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/7000010a01">
"Whoa&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
My log starts to fill up with recieved messages like 
raging waves&. 

{
	//���F�R�C�������ړ�
	CoilRaceMove("dm0570_01",2000);
}
They're all from Koujaku&.

I redial him&, flustered&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���R�C��_�g���A�P�R�[���œd�b�ɏo��

//cono�u���o�F�R�C�����o����ۂɂ͂������wait�͏����Ă��������v
//	Wait(1000);

//�����H�F�R�C���ʘb

	//���F�R�C�������ړ�
	CoilRaceMove("dm0570_11",1000);

	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm0570_12","Koujaku",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//���R�C�����M
	//CreateSE("coilsound_phone_call","se����_�R�C��_���M���t");
	//MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

	//���G�R�C���d�b�\��
	CoilPhone_CallFade();
	//���R�C���҂�
	CoilWait();

	Wait(1700);

	//���G�R�C���d�b�o��
	CoilPhone_CallOn(@0,@0,"st�g��_�ʏ�_shout");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm05/7000020a02">
"Aoba!?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/7000030a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�g��_�ʏ�_angry4");

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm05/7000040a02">
"You&.&.&. Where have you been!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/7000050a01">
"Sorry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�g��_�ʏ�_worry");

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm05/7000060a02">
"I was so worried&, you weren't picking up at all!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_sad",2850,"fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/7000070a01">
"Some things happened&.&.&. But I'm going home now&, so we'll
 talk later&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�g��_�ʏ�_cool");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�����H�F�R�C���ʘb
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm05/7000080a02">
"Got it&. I'm at Heibon right now&, so go there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/7000090a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	//���G�R�C���d�b�I��
	CoilPhone_End();

	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPhone",300,-50,370);
	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	//CoilAllDelete(300,-50,370);
	//���R�C���҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Hearing Koujaku's voice bounced me back to reality in an 
instant&.

With Dry Juice and Granny gone&, and even being dragged 
here&.&.&.

Outrageous things keep happening one after the other&, and  by now I'm feeling numb to it&. But this is reality&. 

And they'll keep happening&.

&.&.&.I should go&.

I took some of my meds for my headaches&, picked up my bag&, and left the room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(1000, true);
	Wait(1500);

//�����t�@�C��["dm0580.nss"]

}
