//<continuation number="290">
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


scene dm3760.nss_MAIN
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
	#bg304022_5_���]�^���[�O�ʂ����=true;
	#bg304031_5_���]�^���[�L��01����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3770.nss";

}


scene dm3760.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304031_5_���]�^���[�L��01����");
	FadeBG(0,true);

	CreateTextureSP("���", 100, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01����.jpg");
	Request("���", Smoothing);
	Shake_Loop("@���","shake01");


	SoundPlay("@dm008",0,450,true);


	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEXmul("�G�F��", 500, RED);
	Fade("�G�F��", 300, 600, null, true);

	Delete("��w�i");
	DrawDelete("�G�F��", 150, 100, null, "slide_01_02_1", true);

	CreateSE("SE11","se�敨_�����o�C�N_���s01L");
	CreateSE("SE12","se����_���]�^���[_�n��01L");
	CreateSE("SE13","se����_���]�^���[_�A���[��01L");

	MusicStart("SE11",0,700,0,1000,null,true);

	CreateVOICE("��������","dm25/1000010e14");
	MusicStart("��������",0,700,0,1000,null,true);

	Wait(1000);

	MusicStart("SE12",0,700,0,1000,null,true);
	MusicStart("SE13",0,500,0,1000,null,true);

//����ʐؑց^���t���_

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000010a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_���]�^���[_�n����01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The tower starts to violently sway&.

Time has run out&. I drive the bike like a madman&.

I hold onto Akushima with my other hand tightly&, clinging 
to him as hard as I can to make sure he doesn't fall off&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("����*", 2500, 0, null);
	SetVolumeEX("SE*", 2500, 0, null);
	CreateColorEX("�G����", 5000, "000000");

	CreateSE("SE02","se�敨_�����o�C�N_�G���W���ӂ���02");
	CreateSE("SE03","se�敨_�����O�o�C�N_���苎��");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(1000);
	MusicStart("SE03",0,700,0,1000,null,false);

	Zoom("���", 800, 3000, 3000, Axl2, false);
	Move("���", 800, @-400, @-100, Axl2, false);
	Rotate("���", 800, @0, @0, @-30, Axl2,false);

	Wait(600);
	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	Delete("�G�F��");

	Shake_LoopDelete();
	Delete("���");

	Wait(1000);

	OnBG(10,"bg304022_5_���]�^���[�O�ʂ����");
	FadeBG(0,true);
	CreateTextureSP("���", 100, Center, Middle, "cg/bg/bg304022_5_���]�^���[�O�ʂ����.jpg");
	Request("���", Smoothing);
	Shake_Loop("@���","shake01");
	Zoom("���", 0, 2000, 2000, null, true);

	MoveFTP1("@���",3500,10,2);

	CreateSE("SE05","se�敨_�����O�o�C�N_�}�u���[�L01");
	CreateSE("SE06","se�敨_�����o�C�N_���s01L");
	CreateSE("SE07","se�퓬_�Ռ�_�j��01a");
	CreateSE("SE12","se����_���]�^���[_�n��01L");
	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",2000,700,0,1000,null,true);
	MusicStart("SE07",2000,300,0,1000,null,true);
	MusicStart("SE12",2000,700,0,1000,null,true);


	CreateMovieSPsub("���P", 990, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("���P", 0, 5000, 5000, null, true);

	Zoom("���", 600, 1100, 1100, Dxl2, false);
	DrawDelete("�G����", 150, 100, null, "circle_01_00_1", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
We go down the stairs at a racing speed&, making it all the way to the bottom and out of the entrance&.

I look up to the Tower&, it's swaying from left to right 
and has cracks all over&.

{
	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE02","se����_���]�^���[_�n����02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE05", 1000, 0, null);
	SetVolumeEX("SE06", 1000, 0, null);
	SetVolumeEX("SE07", 1000, 0, null);

}
I stomp on the brakes to halt&.

But without stopping&, I started to swerve and the wheels 
screeched&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000020a01">
"Uwah! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE03","se�l��_�Ռ�_�]�|01");
	CreateSE("SE04","se����_������_�U�炩��01");

	Shake_LoopDelete();
	Shake("���", 1200, 0, 10, 0, 0, 1000, null, false);

	MusicStart("SE04",0,700,0,1000,null,false);

	Wait(1000);
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake_Loop("@���","shake01");
//	Shake_LoopDelete();

//	BGPlainShake(50,1000,0,20,0,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I tumbled down some good meters away from the bike&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000030a01">
"&.&.&.Ouch&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I look over to the bike and see white smoke coming from 
it&.

I frantically run over to it and move the frame&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000040a01">
"Hey&, are you okay!?"

{	Fw("fwAM�g��_�o�C�N_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm37/6000050b12">
"&.&.&.Yeah&. Other than that little accident&, there are no
 problems&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
&.&.&.That's great&.
I'm not worried for now&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/6000060e45">
"Hey!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
It's the Scratch members&. They're running this way&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/6000070e45">
"Looks like you made it!"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/6000080e46">
"I was freaking out&. I was wondering why you weren't coming
 out!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000090a01">
"This explosion&, you guys&.&.&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/6000100e45">
"Yeah&, it was Mink-san's orders&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//<PRE @box0>
//[text0040]


//</PRE>
//	SetText();
//	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/6000110e46">
"Anyway&, let's get the hell out of here!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���o�C�N������o����
	CreateSE("SE01","se�敨_�����o�C�N_�G���W���ӂ���01");
	CreateSE("SE02","se�敨_�����o�C�N_�}����01");

	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I flick my head around to the sound of the accelerator 
going&, and the bike heads to the collapsing tower&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000120a01">
"Oi!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
You'll get caught up in that mess if you go now&.&.&.!

I tried to go after it&, but someone grabbed me by the 
shoulders from behind&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/6000130e45">
"It's fine&. We're going&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000140a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
The looks on the Scratch members' faces as they look up to the tower says it all&.

&.&.&.I see&.

Maybe Tori was going to save Mink&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/6000150e46">
"I don't know the specifics&, but we have an outline of what Mink-san was aiming for&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/6000160e46">
"So&.&.&. We're going to go&. That's what he wanted&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
After he says that&, the rest of the members silently hold 
a gloomy expression&.

&.&.&.That's right&.
It's painful for them too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000190a01">
"&.&.&.I got it&. Let's go&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
As the members started to walk away&, I noticed a person 
rolling around on the ground&.

&.&.&.Akushima&.

He's been like that ever since he got thrown off the bike&. Looks like he hasn't regained consciousness yet&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/6000200e46">
"What's up?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I hesitated for a moment&, but then turned in Akushima's 
direction&.

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I throw his arm around my shoulders and hold him up next 
to me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/6000210e45">
"Hey&. What're you going to do with him?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000220a01">
"He'll die here like this&. At least until he's far away
 enough from the detonation&.&.&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/6000230e46">
"Are you stupid? Trash him&, this ain't funny&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000240a01">
"I can't just watch him die&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
He really is heavy&.&.&.

{
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
}
I stumble along&, and a single member comes up to me&.

He clicks his tongue and then pulls up Akushima from the 
other side&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000250a01">
"Thanks&, you're a big help&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/6000260e45">
"It would be fucking stupid if you died and he lived&,
 asshat!"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm37/6000270e45">
"I'll tell you now that I'm not carrying his ass&. I swear
 I'm dropping him in a little bit&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm37/6000280a01">
"I know&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Because of the help on the other side&, moving forward  
became a lot easier&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateMovieEXsub("�G���扌", 500, Center, Middle, true, true, "dx/mvk100.ngs");
	Zoom("�G���扌", 0, 3500, 3500, null, true);

//���r�d�F�S�S�S�S�S�S�A�ƃf�J���n����
	CreateSE("SE01","se����_���]�^���[_�n����01");
//	BGPlainShake(50,300,50,4,0,0,1000,null,true);
	Shake_LoopDelete();
	Shake("���", 1200, 0, 10, 0, 0, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G���扌", 1000, 1000, null, true);

	Shake_Loop("@���","shake01");

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm37/6000290e46">
"Hurry!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Another rumbling later and my entire vision turned into 
dust&.

Unable to look back any more&, we ran far away as we could 
from the tower in a daze&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("@dm*", 4000, 0, null);

	TextBoxDelete(0);
	Wait(16);

	CreateColorEX("�G�F��", 5000, "000000");

	CreateSE("SE01","se����_���]�^���[_�|��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake_LoopDelete();
	Shake("���", 1200, 0, 15, 0, 0, 1000, null, false);
	Wait(1000);

	Shake("���", 1200, 9, 5, 0, 0, 1000, null, false);
	Wait(500);
	Shake("���", 1200, 5, 10, 0, 0, 1000, null, false);
	Wait(500);
	Shake("���", 20000, 5, 10, 0, 10, 1000, null, false);

	Wait(1500);

	SetVolumeEX("SE*", 4000, 0, null);
	Fade("�G�F��", 3000, 1000, null, true);
	Wait(2000);
	ClearFadeAll(4000, true);

	Delete("��*");

	Wait(5000);

//�����t�@�C��["dm3770.nss"]

}
