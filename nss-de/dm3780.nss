//<continuation number="10">
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


scene dm3780.nss_MAIN
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
	#bg304012_1_���]�^���[�S�i������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3810ed.nss";
//	$GameName = "dm3790.nss";

}


scene dm3780.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm001",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	CreateTextureSP("�G�w�i100", 100, -705, 0, "cg/bg/l/bg101031_1_���Z����ʂ藠�H�n�g���J_l.jpg");

	Delete("��w�i");

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,600,0,1000,null,false);

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I leave Heibon and walk home&.

The scenery is still the same around here&.
But I think the atmosphere has changed&.

When Platinum Jail was prospering&, somehow the Old 
Resident District felt like it had given up&.

But today everyone is facing forward and giving it their 
all&.

I can feel it in my skin&, and my feet start to feel heavy 
like I'm having hallucinations&.

The surroundings steadily change&.&.&.

Am I actually moving forward?

I've been in the same place the entire time&, stepping 
along&, alone&.

I feel like time has stopped for me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
&.&.&.Ever since then&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�A�����~�܂�
	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/bg/bg304022_5_���]�^���[�O�ʂ����.jpg");

	EfRecoIn2(500);

	Wait(1500);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);

	Wait(500);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,600,0,1000,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.Is it really all right like this?

Not moving forward&.

Not facing what I should be?

Can I do anything? Can I&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	Wait(800);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1001", 1001, Center, Middle, "cg/ev/m/ev364�~���N�ߔ�a_m.jpg");
	Move("��z1001", 0, @100, @0, Dxl3, true);

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	Delete("�G�F��");

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I wasn't able to save Mink in Scrap&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("��z1002", 1002, Center, Middle, "cg/bg/bg204011_3_�\�I�~���N�̋���������.jpg");
	Fade("��z1002", 500, 1000, null, true);
	Delete("��z1001");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Because I didn't wish for him to keep living&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	Delete("��z*");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
&.&.&.However&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(300);

//����z�I�����idm3270.nss�j

	EfRecoIn1(10000,200);

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/bg/bg302051_5_�O���b�^�[�G���g�����X.jpg");

	St("C",1001, @0,@0,"fu�~���N_�ʏ퐳��_angry2");
	FadeSt("C",0,true);

	Delete("�G�F��");

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/7000241a05">
"Isn't it yourself who decides what you'll do? Or maybe
 you're some idiot who wants someone else to decide for
 them?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("��z*");
	DeleteAllSt(0,true);

	EfRecoIn2(400);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
&.&.&.That's right&.

I decide for myself what I'll do&.

So I left that tower without going back for Mink myself&.

I thought that was the road that would take me somewhere&.

Back then&.&.&.

When he was looking out the window to Platinum Jail&.

I wonder what happened after I saw that look in his eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G�d�u101", 101, 154, 111, "cg/ev/l/ev343�~���N�A���𕏂ł�_l.jpg");
	Zoom("�G�d�u101", 0, 1200, 1200, null, true);
	Request("�G�d�u101", Smoothing);

	CreateTextureSP("�G�d�u102", 102, -30, -47, "cg/ev/l/ev343�~���N�A���𕏂ł�_l.jpg");

	EfRecoIn2(500);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018a]
Maybe it was his dearly missed homeland&.

Or maybe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u101", 1000, 50, 111, Dxl1, false);
	FadeDelete("�G�d�u102", 1000, null, true);

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018b]
Someway or another&, I think I understand now&.

I think I understand Mink's feelings now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");
	Delete("�G�d�u*");

	EfRecoIn2(400);

	Wait(800);

	Fw("fw���t_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/9000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I always thought I wanted to know more about Mink&.

And that still hasn't changed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	CreateTextureSP("��z�w�i53", 1053, Center, Middle, "cg/ev/ev326���t�̋��q��͂ރ~���N.jpg");
	CreateTextureSP("��z�w�i52", 1052, -607, -15, "cg/ev/ev920�~���N�A�o�C�N����.jpg");
	St("C",1051, @0,@0,"bu�~���N_�ʏ퐳��_serious");
	FadeSt("C",0,true);
	CreateTextureSP("��z�w�i50", 1050, Center, Middle, "cg/bg/bg304131_5_���]�^���[���]�̊ԑO�L��.jpg");

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�F��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I want to know what Mink was thinking&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	Delete("��z�w�i53");

	FadeDelete("�G�F��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
And&.&.&. what he thought about me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	Delete("��z�w�i52");

	Wait(500);

	FadeDelete("�G�F��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
I have to pursue him to know the answer&.

I won't accept it until I have solid proof that "I could 
never come to understand Mink"&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Delete("��z*");
	DeleteSt("C", 0,true);

	FadeDelete("�G�F��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
Who decides that is me&.

&.&.&.So there's only one answer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureSPadd("�G�w�i202", 202, -1022, -162, "cg/ev/l/evf09�g�������_l.jpg");
	Zoom("�G�w�i202", 0, 2000, 2000, null, true);
	Request("�G�w�i202", Smoothing);
	SetShade("�G�w�i202", HEAVY);

	CreateTextureSP("�G�w�i201", 201, -281, -98, "cg/bg/l/bg101031_1_���Z����ʂ藠�H�n�g���J_l.jpg");
	CreateTextureSP("�G�w�i200", 200, -104, -719, "cg/bg/m/bg304012_1_���]�^���[�S�i������_m.jpg");

	Move("�G�w�i201", 500, -767, 0, Dxl1, false);
	FadeDelete("�G�w�i201", 500, null, false);

	Move("�G�w�i200", 1000, -511, -205, Dxl1, false);

	FadeDelete("�G�w�i202", 500, null, false);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 500, 1000, null, true);
	FadeDelete("�G�F��", 100, null, false);

	CreateSE("SE01","se����_����_�H�΂�������01");
	MusicStart("SE01",0,500,0,1100,null,false);
	Wait(500);
	SetVolumeEX("SE*", 3000, 0, null);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Back there&, a huge bird was flying overhead&.

I looked up and came to a new&, clear decision&.
That Mink was alive somewhere under this sky&.

{
	SetVolumeEX("@dm*", 5000, 0, null);
}
So&.&.&.<k> I will head there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����ʓ]��

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 2000, 1000, null, true);

	OnBG(10,"bg104001_1_���t��O�ʂ�");
	FadeBG(0,true);
	Delete("�G�w�i*");

	Wait(1000);

	FadeDelete("�G�F��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
When I came home I told Granny about all of these feelings&.

At first she was surprised&, but didn't object&.

She wore a face that told me that she understood me&.

And muttered "Just like your parents&, huh&."

Granny said that all of my savings from my part-time job 
could be used for travel expenses&.

I promised to visit and call all the time&, and then left 
home&.

&.&.&.So I could go and see Mink&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

	Wait(3000);

}
