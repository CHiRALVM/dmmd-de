//<continuation number="60">
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


scene dm3440.nss_MAIN
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

	#bg302011_5_�O���b�^�[����01�x�b�h�p=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3450.nss";

}


scene dm3440.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg302011_5_�O���b�^�[����01�V��");
	FadeBG(0,true);

	Delete("��w�i");
	FadeDelete("�G�F��", 2000, null, true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The next day&.

I had the worst time waking up&, my head swirling because I tried to get up too quickly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/4000010a01">
"Ouch&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
My head&, my face&, my insides&, they all hurt&.
My hands and feet feel numb and heavy&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/4000020a01">
"Ugh&.&.&. Ouch&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_�O���b�^�[����01�x�b�h�p");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Taking my time to get up&, I realize that Tori is there&, 
perched on the headboard&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/4000030a01">
"Huh&.&.&.? Good morning&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
As soon as I speak&, I immediately close my mouth&.

My voice is raspy and hoarse&.
Maybe because I was just getting up&, and&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, -549, -348, "cg/ev/l/ev339����i�߂��鑓�t_l.jpg");

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
The embarrassment and regret from last night comes to 
mind&.

Tori just stares at me with his head slightly tilted&.

I wait for a bit&, but it seems Tori has no intent 
to talk to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,800,null,false);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
I get up from the bed and take the scarce amount of pills 
I have left&.

I then get dressed&, activate Ren&, and hold him up in my 
arms&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/4000040a01">
"Morning&, Ren&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm34/4000050a06">
"Morning&, Aoba&. How are you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/4000060a01">
"&.&.&.Haha&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/l/bg302041_5_�O���b�^�[�L��_l.jpg");

	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 500, null, true);

	Wait(500);

	CreateSE("SE01","se����_����_�H�΂�������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	SetVolumeEX("SE01", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I reach for the door to leave the room&, and Tori flaps his wings and passes me just as it opens&.

&.&.&.Why was he in my room?
It might of been because of Tori that&.&.&.

For some reason I felt Mink's presence in the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I leave the room and walk down the corridor&.

I'm a complete wreck from yesterday&, the first thing I 
want to do is take a bath&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm3450.nss"]

}
