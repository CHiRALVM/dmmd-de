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


scene dm0730.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	if($DM_ROUTE==5){	$GameName = "dm0745.nss";
	}else {		$GameName = "dm0740.nss";
	}

}


scene dm0730.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg402051_1_��������֎~��无�ʂ�");
	FadeBG(0,true);
	//Zoom("@OnBG*", 0, 1500, 1500, null, true);
	//Move("@OnBG*", 0, -120, -90, null, true);
	//Request("@OnBG*", Smoothing);

	if($PreGameName == "dm0725_vs.nss"){

	CreatePlainSP("�G��", 100);
	SetShade("�G��", HEAVY);
	FadeDelete("@��w�i", 1000, null, true);
	Wait(500);
	FadeDelete("�G��", 1000, null, true);
	}else{
	FadeDelete("@��w�i", 0, null, true);
	}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm07/3000010b03">
"You're finally awake&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/3000020a01">
"Eh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Huh?

That voice&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, Center, -50, "cg/bg/l/bg402051_1_��������֎~��无�ʂ�_l.jpg");
	CreateTextureSP("�G���G", 700, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal_x02.png");
	CreateTextureSP("�G���G��", 600, Center, Middle, "cg/fu/x/fu�^�G_�ʏ�_normal2_x02.png");

	SetShade("�G�w�i", MEDIUM);

	Move("�G���G*", 0, @0, @-25, null, true);

	Move("�G���G*", 1000, @0, @25, null, false);
	Move("�G�w�i", 1000, @0, @50, null, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/3000030a01">
"&.&.&.Granny!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Why is Granny here&.&.&.!?

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
When I try to get up&, I realize I was resting on Granny's 
lap&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/3000040a01">
"Granny&, why&, how- Huh?"

{
	DeleteFw();
	Fade("�G���G", 200, 0, null, true);
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm07/3000050b03">
"It's been chaos ever since you got here&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm07/3000060a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G�w�i", 1000, Center, Middle, "cg/ev/ev069�~�Y�L�l�������.jpg");

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.That's right&.

I think of how I stopped Mizuki's people from loading 
Granny into their car&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0745.nss"]�@���[�g�̂ݕ\��
//�����t�@�C��["dm0740.nss"]

}
