//<continuation number="140">
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


scene dm4210.nss_MAIN
{

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Secret path to Platinum Jail",true,true);

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

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("dm4210a","Clear","Here",true,true);

	//���w�iCG
	#bg302051_5_�O���b�^�[�G���g�����X�Ǒ�=true;
	#bg302012_5_�O���b�^�[����02=true;
	#bg302061_5_�O���b�^�[�K�i=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4220.nss";

}


scene dm4210.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The next day&.

It's always night time&, but in reality it's about noon&.

When I wake up&, I pick up Ren and leave the room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg302031_5_�O���b�^�[�o�[�J�E���^�[");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[����.jpg");
	FadeDelete("�G��", 500, null, true);

	Wait(500);

	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I go into the living room and open the fridge by the bar 
counter for something to drink&.

Inside it are some ingredients and fruits&.

Clear did say that he was given some things at that 
supermarket yesterday&.

Oh yeah&, what is Clear up to anyway?
Is he awake yet?

I bite into a fruit for breakfast instead and go to peek 
into Clear's room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg302012_5_�O���b�^�[����02");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302041_5_�O���b�^�[�L��.jpg");

	FadeDelete("�G��", 500, null, true);

	Wait(500);

	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�w�i", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.No one's in there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(500,true);

	Wait(500);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302061_5_�O���b�^�[�K�i.jpg");
	#bg302051_5_�O���b�^�[�G���g�����X�Ǒ�=true;

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I lean over the handrail and look around the first floor&.
But it doesn't seem like anyone's there either&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i", 500, null, true);
	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000010a01">
"Where did he go?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm42/1000020a06">
"Clear went out earlier&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000030a01">
"He left?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F�ȉ��R�C�����o�͌��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
We messed with yakuza yesterday&, so I have a bad feeling 
about this&.&.&.

{
	//���R�C�����M
	CreateSE("coilsound_phone_call","se����_�R�C��_���M���t");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);
}
I think about contacting him&, and while I do&, my Coil 
starts to ring&.

It's Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	Wait(1000);
//	CreateSE("SE01","se����_�R�C��_���쉹01");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Wait(500);

//	$SYSTEM_skip=false;

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���G�R�C���d�b�ݒu
	CoilPhone_IncallSet(368,30,"dm4210","Clear",false);

//	WaitKey();

	//���@�R�C�����o�\��
	CoilStartFade();
	//���G�R�C���d�b�\��
	CoilPhone_CallFade();
	//���R�C���҂�
	CoilWait();

	Wait(1000);

	//���G�R�C���d�b�o��
	CoilPhone_CallOn(@0,@0,"st�N���A_���ʃ}�X�N����_normal");


//	$SYSTEM_skip=false;

//	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//���R�C���d�b
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/1000040a04">
"Hello? Is this Master?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
He's speaking softly&.
He's talking like that on purpose&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000050a01">
"Clear&, where are you right now?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/1000060a04">
"Please listen to me&, Master&. I've somehow gotten inside
 Oval Tower&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000070a01">
"&.&.&.Eh?"

{	DeleteFw();}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/1000080a04">
"I've successfully infilitrated the building&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000090a01">
"You got in?"

{	DeleteFw();}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/1000100a04">
"Yes&. I'll send you a map showing you the routes to take&,
 so please come here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@10,@10,"st�N���A_�ʏ�}�X�N����_normal");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/1000110a04">
"It'll be dangerous if I'm spotted&, so I must hang up now&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000120a01">
"Eh? Wait&, hey&, Clear!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���G�R�C���d�b�I��
	CoilPhone_End();

//	Wait(300);
//	CreateSE("SE01","se����_�R�C��_���쉹01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	//���A���[��NEW�ݒu�wCoilNewSet(X�ʒu,Y�ʒu)�x
	CoilNewSet(400,100);

	//���w�ėp�x�R�C���ړ��Q�wCoilMove2(�ړ��p�^�[��,"�w��̃R�C����",����,�ړ�X,�ړ�Y,�e���|,�҂�)�x//���ړ��͐�΂̂�
	CoilMove2(2,"CoilPhone",500,150,150,Dxl1,false);

	//���A���[��NEW�\��
	CoilNewFade();

	//�҂�
	CoilWait();//WaitKey(16);

	Wait(500);

	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(344,90);

//	CreateSE("SE01","se����_�R�C��_���쉹02");
//	MusicStart("SE01",0,700,0,1000,null,false);

	//���B���[�����X�g�\���Q�i���[��NEW����̑J�ځj
	CoilMListFade_New();

	//���B�V�K���[���ǉ�//dm1340a
	CoilMailAdd2("dm4210a","Clear","It's here",true);

	//�҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Right after he hangs up on me&, I receive a message from 
him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	//���w�ėp�x�R�C���ړ��P�wCoilMove("�w��̃R�C����",����,�ړ�X,�ړ�Y,�e���|,�҂�)�x//���ړ��͐�΂ł����΂ł��n�j
	//CoilMove("CoilMList",300,@200,@-80,Dxl1,true);

	//���C���[���ݒu�wCoilMailSet("���[���i�b�g��",X�ʒu,Y�ʒu)�x
	//CoilMailSet("dm4210a",314,120);
	CoilMailSet("dm4210a",390,200);

	//���w�ėp�x�R�C���ړ��Q�wCoilMove2(�ړ��p�^�[��,"�w��̃R�C����",����,�ړ�X,�ړ�Y,�e���|,�҂�)�x//���ړ��͐�΂̂�
	CoilMove2(2,"CoilMList",500,550,30,Dxl1,false);

	//���C���[���\���P�i�ʏ�\���j
	//CoilMailFade();
	//���C���[���\���Q�i���[�����X�g����̑J�ځj�wCoilMailFade_MList("���[���i�b�g��",�b��)�x
	CoilMailFade_MList("dm4210a",500);


	//�҂�
	CoilWait();

	Wait(500);

	//���D�_�E�����[�h�ݒu�wCoilDownSet(X�ʒu,Y�ʒu)�x
	CoilDownSet(200,50);

	//���D�E�����[�h�\���P�i�ʏ�\���j
	//CoilDownFade();
	//���D�E�����[�h�\���Q�i���[������̑J�ځj
	CoilDownFade_Mail();

	//���D�E�����[�h�X�^�[�g�wCoilDownStart(�b��)�x
	CoilDownStart(5000);

	//���D�E�����[�h����
	CoilDownComp();

	//�҂�
	CoilWait();


//	CoilMove("CoilPict",300,@200,@-80,Dxl1,true);
//	CoilMailSet("dm4210a",500,150);
//	CoilPictSet(344,50,"cg/ef/ef�}�b�v�ԈႢ�^���[_�N���A.jpg");
	CoilPictSet(304,50,"cg/ef/ef�}�b�v�ԈႢ�^���[_�N���A.jpg");

	CreateSE("SE01","se����_�R�C��_���쉹02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CoilPictFade_Down();

	CoilWait();

	Wait(1500);

//�R�C�����[���{�b�N�X�\��
//���o�l�F�N���A
//�����F�����ł�
//�{���F�˃i�b�g���Fdm4210a
//�Ȃ�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
&.&.&.The picture he sends looks like a kid's drawing&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000130a01">
"I don't know if I can do this&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CoilAllDelete(300,-50,370);

	CoilWait();

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
But really&, I wonder if he actually got into Oval Tower&.

Was it that easy of a thing to do?

But it is Clear&, after all&.&.&.

I don't know how in the world he did it&, but it makes me 
feel uneasy&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/1000140a01">
"Anyway&, let's go&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
I put Ren in my bag and leave Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//�����t�@�C��["dm4220.nss"]

}
