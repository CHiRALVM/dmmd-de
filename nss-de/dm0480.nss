
//�����[���̒��M���Ȃ��Ȃ�����[�Ƃ������b�̊�//<continuation number="260">
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


scene dm0480.nss_MAIN
{
//���R�C�����[���{�b�N�X�\���P
	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("chara0030","Mizuki","How are you?",false,true);
	CoilMailAdd("chara0040","Granny","Dinner",false,true);
	CoilMailAdd("chara0050","Koujaku","About then",false,true);
	CoilMailAdd("hime0010","Captive Princess","Please save me",true,true);
	CoilMailAdd("spm0040","***","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,true);
	CoilMailAdd("dm0340a","Koujaku","(No Subject)",false,true);

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

	CoilMailSub("chara0000");
	CoilMailSub("chara0010");
	CoilMailSub("chara0020");
	CoilMailSub("chara0030");
	CoilMailSub("chara0040");
	CoilMailSub("chara0050");



	CoilMailSub("hime0090");
	CoilMailSub("hime0030");
	CoilMailSub("hime0040");
	CoilMailSub("hime0050");
	CoilMailSub("hime0060");
	CoilMailSub("hime0070");
	CoilMailSub("hime0080");
	CoilMailSub("hime0090");

	CoilMailSub("hime0110");
	CoilMailSub("hime0120");
	CoilMailSub("hime0130");
	CoilMailSub("hime0140");
	CoilMailSub("hime0150");
	CoilMailSub("hime0190");
	CoilMailSub("hime0210");
	CoilMailSub("hime0220");

	CoilMailAdd("hime0240","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);

	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);

	#0480���[�r�[�P=true;
	#0480���[�r�[�Q=true;
	#0480���[�r�[�R=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0490.nss";

}


scene dm0480.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101011_1_���Z����ʂ�\");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -214, -520, "cg/bg/m/bg101011_1_���Z����ʂ�\_m.jpg");
	Move("�G�w�i100", 1000, -381, -520, Dxl1, false);
	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Koujaku leaves to go see his other team members&, and I 
head over to Mizuki's shop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���R�C��_���[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(1500);
	SetVolumeEX("SE*", 0, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Hm? A message&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F�R�C��_���[�����o
	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���A���[��NEW�ݒu�wCoilNewSet(X�ʒu,Y�ʒu)�x
	CoilNewSet(400,100);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���A���[��NEW�\��
	CoilNewFade();

	//�҂�
	CoilWait();

	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(500,100);

	//���B���[�����X�g�\���P�i�ʏ�\���j
//	CoilMListFade();
	//���B���[�����X�g�\���Q�i���[��NEW����̑J�ځj
//�e�F�R�C���̉��o�͌��
	CoilMListFade_New();

	CoilMailAdd2("hime0090","Captive Princess","Please save me",true);

	//�҂�
	CoilWait();

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�R�C�����[���{�b�N�X�\���P
//�����u�������Ă��������v
//���o�l�F�Ƃ���̕P
//�{����\��

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000010a01">
"&.&.&.Spam?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
The subject says "Please save me&."
The sender is "Captive Princess&."

&.&.&.Captive Princess?

I could've sworn I got a spam message earlier with the samename&.

Huh&, it's the exact same thing again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���R�C��_���[������
	CoilMailSub2("hime0090",500);

//	Wait(500);

	CoilAllDelete(300,200,370);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000020a01">
"And&, delete&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
//�����o�F�R�C��_���[�����M
//���r�d�F�R�C��_���[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");
	MusicStart("SE01",0,700,0,1000,null,true);
	Wait(1500);
	SetVolumeEX("SE*", 0, 0, null);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Hm? Another message&.

//�R�C�����[���{�b�N�X�\���Q
//�����u�������Ă��������v
//���o�l�F�Ƃ���̕P
//�{����\��

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F�R�C��_���[�����o
	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���A���[��NEW�ݒu�wCoilNewSet(X�ʒu,Y�ʒu)�x
	CoilNewSet(400,100);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���A���[��NEW�\��
	CoilNewFade();

	//�҂�
	CoilWait();

//�e�F�R�C���̉��o�͌��

	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(500,100);

	//���B���[�����X�g�\���P�i�ʏ�\���j
//	CoilMListFade();
	//���B���[�����X�g�\���Q�i���[��NEW����̑J�ځj
//�e�F�R�C���̉��o�͌��
	CoilMListFade_New();

	CoilMailAdd2("hime0030","Captive Princess","Please save me",true);

	//�҂�
	CoilWait();

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000030a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The same thing came again&.
I quickly delete it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���B���[�����X�g�����ړ��wCoilMListMove("�ړ���̃��[���i�b�g��",�b��)�x
	CoilMListMove("hime0030",500);
	CoilWait();

//���R�C��_���X�Ƀ��[�������M����
	CoilMailAdd2("hime0040","Captive Princess","Please save me",true);
	CoilWait();
	CoilMailAdd2("hime0050","Captive Princess","Please save me",true);
	CoilWait();

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000040a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//���R�C��_���X�Ƀ��[�������M����
	CoilMailAdd2("hime0060","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0070","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0080","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0090","Captive Princess","Please save me",true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000050a01">
"Eh? Wait&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilWait();

//���R�C��_���[�����M

//���R�C��_���[�����M

//���R�C��_���[�����M

//���R�C��_���[�����M

//���R�C�����[���{�b�N�X�\���R
	CoilMailAdd2("hime0110","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0120","Captive Princess","Please save me",true);
	CoilWait();

	SoundPlay("@dm005",0,450,true);

	CoilMailAdd2("hime0130","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0140","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0150","Captive Princess","Please save me",true);
//	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
This looks bad&.&.&.

They just keep coming&.
What the hell?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 15000, 0, InBottom, "cg/bg/m/bg101011_1_���Z����ʂ�\_m.jpg");
	Move("�G�w�i", 0, @0, @50, null, true);

	CoilMailAdd2("hime0190","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0210","Captive Princess","Please save me",true);

	CreateSE("SE01","se����_��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE11","se����_�R�C��_��M���t");
	MusicStart("SE11",500,700,0,1000,null,true);
	Move("�G�w�i", 500, @0, @-50, Dxl1, false);
	Fade("�G�w�i", 500, 1000, null, true);

//	Wait(500);

	CoilWait();

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Confused&, I open my bag and start Ren up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000060a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000070a01">
"Ren&, these messages look like bad news&. What virus is it?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000080a06">
"Wait a moment&. I'm investigating it now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
Saying that&, Ren goes silent&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE11", 300, 1, null);
	Fade("�G�w�i", 500, 0, null, false);
	CoilMailAdd2("hime0220","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0240","Captive Princess","Please save me",true);

	SetVolumeEX("SE11", 500, 700, null);
	Fade("�G�w�i", 500, 1000, null, true);

	CoilWait();

//���R�C��_���[�����M

//���R�C��_���[�����M


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I wait impatiently as the messages keep coming in the 
whole time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000090a01">
"Ren&, are you done yet?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000100a06">
"Analysis completed&. There is no virus&. And if it is
 indeed actually virus&, it's had counter-measures
 installed&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000110a01">
"So you're saying it's impossible for you to stop these
 messages from coming in?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000120a06">
"The sender's address is unidentified&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000130a01">
"The hell&, are you serious!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000140a06">
"It would be better to check the contents&."

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000150a01">
"Is it gonna be all right&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//���r�d�F�R�C��_���[�����M

//���r�d�F�R�C��_���[�����M

	SetVolumeEX("SE11", 300, 0, null);
	Fade("�G�w�i", 500, 0, null, false);
	CoilMailAdd2("hime0250","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0270","Captive Princess","Please save me",true);
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
But I have a feeling these messages will never leave me 
alone&. Even my ringtone is starting to tick me off&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilMailAdd2("hime0280","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0290","Captive Princess","Please save me",true);
	CoilWait();


	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000160a01">
"I got it&, jeez! If you want me to&, I'll look already!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilMailAdd2("dm0480a","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailSet("dm0480a",114,200);
	CoilMailFade_MList("dm0480a",500);

	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
In an act of desperation&, I tap the subject&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���[�����Ȃ��Ȃ�����[�Ƃ������b�̊�
	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
&.&.&.Huh?

They stopped sending&.

What did I do?

I feel uneasy&, but read the text inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�{���F���Ȃ����˃i�b�g���Fdm0480a
//	CoilMove("CoilMList",300,@200,@-80,Dxl1,false);
	CoilMove("CoilMail",300,@200,@-80,Dxl1,true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
There's nothing written&.
So was it really just spam after all&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���R�C��_�Q�[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");
	MusicStart("SE01",0,700,0,1000,null,false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
My Coil rings again&.
But this time it isn't a message&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000170a06">
"It's a game being transmitted&."

{FwPro("fw���t_�ʏ�_shock2",2000,"fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000180a01">
"A game being transmitted&.&.&. Oh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�����o�F�R�C��_�R�C���ɂ̓^�C���o�[�Ɛ������\������Ă��遨�_�E�����[�h��
//�����o�F���g���Q�[��_���j�^�[�Ƀ^�C�g����ʂ������яオ����

//�e�F�R�C�����o�͌��
	CoilDownSet(200,50);
	CoilDownFade_Mail();
	CoilDownStart(5000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Now that I think about&, there was that beta going on for 
that game before&. This must be the next phase&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilDownComp();
	CoilWait();
	Wait(500);

	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C���摜�\���̈捕.png");
	//���E�摜�\���Q�i���[���_�E�����[�h����̕\���j
	CoilPictFade_Down();
	//���R�C���҂�
	CoilWait();

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("0480���[�r�[�P","dx/mvdot048.ngs");
	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�Q","dx/mvdot048loop.ngs");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("0480���[�r�[�P");
	//���E�摜�`��ҋ@���[�r�[�p
	CoilPictWaitSkip("0480���[�r�[�P");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("�Q");
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0095]
When it finishes downloading&, the Title Screen shows up on the monitor&.

It's the same title as last time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text096]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000190a01">
"&.&.&.Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����g���Q�[��

	SetVolumeEX("@dm*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text098]
I'm ready to play&, but there's no start button&.
How do you start this?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F���g���Q�[��
	SoundPlay("@dm8bit001",0,450,true);

//	CoilPictCon("�R","dx/mvdot048a.ngs");
//	CoilPictFadeChan("�R");
//	Wait(500);
//	CoilPictCon("�S","dx/mvdot048aloop.ngs");
//	CoilPictFadeChan("�S");

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("0480���[�r�[�Q","dx/mvdot048a.ngs");
	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�S","dx/mvdot048aloop.ngs");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("0480���[�r�[�Q");
	//���E�摜�`��ҋ@���[�r�[�p
	CoilPictWaitSkip("0480���[�r�[�Q");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("�S");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text099]
A few moments later&, the screen changes and the game 
suddenly starts up&.

Even when I try to work the controls on my Coil&, nothing 
moves&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�w�i", 500, 1000, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000200a01">
"Ren&, it's not working&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000210a06">
"Isn't it a demo?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000220a01">
"A demo? What's the point of sending that out?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
I keep trying to press the control keys&, and the 
protagonist starts to move&.

Did I get it to work?

Right as I think I did&, I don't touch the controls but 
the character continues to move on its own&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F���g���Q�[��
//�e�F�ȉ����[�r�[�H

//�ȉ��A�t�@�~�R���f������
//��l�������̓�����ɗ����A���֓����Ă������Ƃ���B
//���A������̖�͕�����Ă���̂Œ��ɓ���Ȃ��B
//���̂��ƁA���̏�����炨�k���񂪌����B
//���k���񂪓�����̖�̑O�܂ŗ���ƁA�Q�C�̍����傫�ȃR�E���������ł���
//���k��������ݍ��݁A�����オ���Ĕ��ł����Ă��܂��B
//���k�����A�ꂽ�R�E���������ł�������̓K���N�^�̎R�������B
//�f���I���

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("0480���[�r�[�R","dx/mvdot048b.ngs");
	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�Î~��","cg/ef/ef�R�C��mvdot048b.png");

	Fade("�G�w�i", 500, 0, null, false);

//	CoilPictCon("�U","dx/mvdot048b.ngs");

//	CoilPictFadeChan("�U");
//	CoilPictWait();
//	CoilPictCon("�Î~��","cg/ef/ef�R�C��mvdot048b.png");
//	CoilPictFadeChan("�Î~��");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("0480���[�r�[�R");
	//���E�摜�`��ҋ@���[�r�[�p
	CoilPictWaitSkip("0480���[�r�[�R");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("�Î~��");

//	Wait(500);

	Fade("�G�w�i", 500, 1000, null, true);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000230a01">
"&.&.&.What is this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
The game looks like it's only half done&.
So it really was just a demo&.

What's the point in sending this?
Did they make a mistake?

I don't get what it's about either&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000240a01">
"It looks exactly like one of those 'deep' games&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm04/8000250a06">
"I see&."

{	Fw("fw���t_�ʏ�_cranky3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/8000260a01">
"All those messages earlier were like spam too&. A total
 waste of time&. Let's just go home&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�w�i", 500, null, true);

	SetVolumeEX("@dm8bit001", 0, 0, null);
	CoilAllDelete(300,-50,370);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
I exit out of the game and Ren and I start to walk&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0490.nss"]

	SetVolumeEX("@dm*", 3000, 0, null);
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

}
