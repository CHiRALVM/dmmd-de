//<continuation number="200">
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


scene dm3230_vs.nss_MAIN
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
	$GameName = "dm3230sl.nss";

}


scene dm3230_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg306021_5_�q�ɓ����������");
	FadeBG(0,true);

	St("C",740, @0,@0,"st����_�ʏ�_laugh");
	FadeSt("C",0,true);

	DrawDelete("��w�i", 300, 100, Dxl1, "zzex_circle_01_00_1", true);

	St("C",740, @0,@0,"st����_�ʏ�_shout");
	FadeStPro("C", 5600, 200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�����z
<voice name="����" class="����" src="voice/dm32/3000010b08">
"Hahahahahahahhaaaa!!! If you want to die so badly&, then
 I'll kill you!! KILL&, KILL&, KILL!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Akushima yells in a triumphant voice and sets the police 
loose on us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i��", 90, Center, Middle, "cg/bg/m/bg306021_5_�q�ɓ����������_m.jpg");
	CreateColorSPadd("�G�F��", 3000, "WHITE");

	St("C",740, @0,@0,"bu����_�ʏ�_shout");
	FadeSt("C",0,true);

	CreateSE("SE01","se�퓬_�e_�\����01����");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�F��", 300, Axl3, false);
	FadeDelete("�G��", 300, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.But the officers on both of his sides turn around 
and&, for some reason&, point their guns towards him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�_sigh");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�����z
<voice name="����" class="����" src="voice/dm32/3000020b08">
"Ahh!? Hey&, what are you bastards doing!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);

//���x���̂P�l�������ֈЊd�ˌ��B���K�z����������B
	CreateSE("SE01","se�퓬_�e_���C01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 150, 1000, Dxl2, true);
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306021_5_�q�ɓ����������.jpg");

	OnBG(10,"bg306021_5_�q�ɓ����������");
	FadeBG(0,true);

	DeleteSt("C", 0,true);

	Fade("�G�w�i��", 0, 0, null, true);

//	Shake("�G�w�i", 250, 20, 20, 0, 0, 500, Axl3, false);
	Fade("�G�F��", 200, 0, Dxl2, false);

	Wait(800);

//�e�F���L���K�z���̉���]
	CreateSE("SE01","se����_���K�z��_���Ƃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(200);
//	SetVolumeEX("SE01", 100, 0, null);

	CreateSE("SE02","se����_���K�z��_��01");
	MusicStart("SE02",0,700,0,800,null,false);

	Wait(600);

	Fw("fw����_�ʏ탁�K�z���Ȃ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�����z
<voice name="����" class="����" src="voice/dm32/3000030b08">
"Oooooohhhhhh!?!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
One of the policemen opens fire on him&. The megaphone falls
from Akushima's hands&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ탁�K�z���Ȃ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�����z
<voice name="����" class="����" src="voice/dm32/3000040b08">
"What! How dare you do this!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306031_5_�q�ɓ����ו���.jpg");

	St("C",740, @0,@0,"st�~���N_�ʏ�_pride");
	FadeSt("C",0,true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/3000050a05">
"You've been doing some pretty bad things up until now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Akushima's face turns a different color upon hearing 
Mink's words&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ탁�K�z���Ȃ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�����z
<voice name="����" class="����" src="voice/dm32/3000060b08">
"&.&.&.Hey&. Impossible&. You fucker-"

{	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/3000070a05">
"What?"

{Fw("fw����_�ʏ탁�K�z���Ȃ�_shock");}
//�y�����z
<voice name="����" class="����" src="voice/dm32/3000080b08">
"What the hell did you dooooo!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/3000090a05">
"All I did was suggest something to your boss and drop him
 a little coin&."


{Fw("fw����_�ʏ탁�K�z���Ȃ�_shout");}
//�y�����z
<voice name="����" class="����" src="voice/dm32/3000100b08">
"MOTHERFUCKEEEERRRRR!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1300,null,false);
	DeleteSt("C", 100,true);

	Wait(200);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSPadd("�G��/�G����", 2000, "WHITE");
	CreateSE("SE01","se�퓬_�Ռ�_���������e01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("�G��/�G����", 0, 0, 400, 500, null, "cg/data/effect_01_00_0.png", true);
	Wait(800);

	DrawTransition("�G��/�G����", 0, 200, 600, 500, null, "cg/data/effect_01_00_0.png", true);
	Wait(300);

	DrawTransition("�G��/�G����", 0, 600, 1000, 500, null, "cg/data/effect_01_00_0.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306031_5_�q�ɓ����ו���.jpg");

	DeleteAllSt(0,true);

	Fade("�G�F��", 200, 0, Dxl2, true);

	CreatePlainSP("�G��", 500);
	SetShade("�G��", MEDIUM);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
As if to stop Akushima's screaming&, Mink takes something 
out of the bag full of weapons&.

Bam! And in the blink of an eye&, white smoke fills the 
room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DrawTransition("�G��/�G����", 500, 1000, 300, 1000, null, "cg/data/effect_01_00_0.png", false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/3000110e45">
"Fuck yeah!"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/3000120e46">
"What now&, huh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se��_�퓬_�e����01L");
	MusicStart("SE01",0,500,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
The sounds of gunshots and angry yells fill the white 
room&.

It's starting&.&.&.!

I start to run away and hide behind one of the wooden 
boxes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���e�̔��C��
	CreateSE("SE01","se�퓬_�e_���C01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 200, 1000, Dxl3, true);
	DrawTransition("�G�F��", 150, 1000, 0, 100, Dxl3, "cg/data/circle_14_00_0.png", true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/3000130a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
A bullet grazes past my face and I turn pale&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_02_0.png", true);
	DrawTransition("�G��/�G����", 0, 300, 200, 1000, null, "cg/data/effect_01_00_0.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306031_5_�q�ɓ����ו���.jpg");
	CreateTextureSP("�G�w�i��", 110, Center, Middle, "cg/bg/bg306031_5_�q�ɓ����ו���.jpg");

//�e�F�V�F�[�h�ł��ڂ₩���ׂ�l�łȂ��Y�[���őΉ����Ă��܂��B
	Request("�G�w�i*", Smoothing);
	Zoom("�G�w�i*", 0, 2000, 2000, null, true);
	SetShade("�G�w�i*", MEDIUM);

	Delete("�G��");

	DrawDelete("�G����", 300, 100, Dxl2, "slide_01_02_1", true);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i��", 100, 15, 15, 0, 0, 500, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
I feel as if my legs will fail me and I search for an 
outline of a box and run over to it&.

I crouch down&, my back to the side of it&.

If that bullet had hit&.&.&.
My body chills just from the thought of it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
Mink told me to protect myself&.&.&.

What do I do if he just leaves me like this&.&.&.!?

I'm different from them&. I've never done anything like 
risk my life in a gunfight&.

Would I kill people?
With this gun?

If not&, I'll be the one killed&.
That's what it means to protect yourself&.

But&.&.&.

That's easier said than done&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/3000140a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���02");
	MusicStart("SE01",0,700,0,1300,null,false);
	Shake("�G�w�i��", 100, 10, 10, 0, 0, 500, Dxl1, true);

//���~���N���ׂɊ��肱��ł���
	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/3000150a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306021_5_�q�ɓ����������.jpg");
	CreateTextureSP("�G�w�i��", 110, Center, Middle, "cg/bg/bg306021_5_�q�ɓ����������.jpg");

	Request("�G�w�i*", Smoothing);
	Zoom("�G�w�i*", 0, 2000, 2000, null, true);
	SetShade("�G�w�i*", MEDIUM);

	DrawDelete("�G����", 200, 100, Dxl2, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
Someone bumps into me from the smoke&.

{
	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G�w�i��", 100, 5, 0, 0, 0, 500, Dxl1, true);
}
I tried to get away as fast as I could&, but I was held by 
the arm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/3000160a05">
"Hey&, wait&."

{	St("C",3740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",1000,true);
	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/3000170a01">
"Mink&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
It was Mink&, holding a submachine gun&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",3740, @0,@0,"bu�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/3000180a05">
"Are you going to hide the whole time? What about your
 gun?"

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/3000190a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",3740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/3000200a05">
"Are you not going to use it&.&.&.or do you just not want to?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm3230sl.nss"]

}
