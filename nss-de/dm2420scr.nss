//<continuation number="30">
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


scene dm2420scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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
	#ev241�������܂�m�C�Y=true;
	#ev241�������܂�m�C�Ya=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2430scr.nss";

}


scene dm2420scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//	SoundPlay("@dm017",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg203011_0_�\�I�m�C�Y��");
	FadeBG(0,true);

	CreateTextureEX("�G�d�u1103", 1103, -1200, -211, "cg/ev/l/ev241�������܂�m�C�Ya_l.jpg");
	Request("�G�d�u1103", Smoothing);
	Zoom("�G�d�u1103", 0, 2000, 2000, null, true);

	CreateTextureEX("�G�d�u1102", 1102, -961, -211, "cg/ev/l/ev241�������܂�m�C�Ya_l.jpg");
	CreateTextureEX("�G�d�u1101", 1101, -961, -211, "cg/ev/l/ev241�������܂�m�C�Y_l.jpg");
	CreateTextureSP("�G�d�u1100", 1100, Center, Middle, "cg/ev/ev241�������܂�m�C�Y.jpg");

	FadeDelete("��w�i", 0, null, true);

//�������u���F�e�L�X�g�o���Ȃ��������ۂ������̂Œ������܂����v

//
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�m�C�Y�z
//<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/2000010a03">
"&.&.&.I'm detatched from the world&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
{
	CreateSoundAkk("�m�C�Y","voice/dm24/2000010a03");
	SoundEffect("�m�C�Y","Echo",100,50,80,160);
	MusicStart("�m�C�Y",0,1500,0,1000,null,false);
	WaitKey(500);
}
With a sigh&, Noiz speaks&.

Noiz is cowering in front of me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("�m�C�Y", 500, 0, null);
	FadeDelete("�G�d�u1100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
This&.&.&.

So this is the world that Noiz has always felt&.&.&.

Abandoned by his parents&, the world where Noiz is forced 
to live alone&.

Unable to feel any pain&, unable to see&.

Left behind in an isolated&, dark room&.

That's the world Noiz feels as if he's in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�d�u1101", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
He's laying on the floor with his feet and hands held by 
shackles&, the locks lost somewhere far in the dark&.

//�������u�V�i���I�F���΂ց`�Ɠr�[�𕪂��܂����v

I bend down and try to undo the shackles&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u1101", 400, -961, -257, Dxl3, false);
	Move("�G�d�u1102", 400, -961, -257, Dxl3, false);
	Fade("�G�d�u1102", 400, 1000, null, true);
	Delete("�G�d�u1101");

	Wait(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
And suddenly&, Noiz's eyes open and look at me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/2000020a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���F����I�ɉ��Ȃ������ǂ������������̂őΔ䂳���Ă��܂��v
	//SoundPlay("@dm017",0,450,true);

	DeleteFw();

	Move("�G�d�u1102", 1000, -961, -357, Dxl1, false);
	Move("�G�d�u1103", 1000, -1200, -46, Dxl1, false);
	Fade("�G�d�u1103", 1000, 1000, null, true);
	Delete("�G�d�u1102");

	CreateSE("SE01","se����_����_��01");
	MusicStart("SE01",0,700,0,600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
His eyes capture me&, and one of his shackled hands reach 
my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��_�͂˂�03");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateColorSP("�G�F��", 5000, "CC0000");
	DrawTransition("�G�F��", 10000, 0, 800, 100, null, "cg/data/effect_01_00_0.png", false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
His thin lips open and turn into a small smile&.

His red tongue sticks out of his smile&.

It passes down his lower lip and reaches his chin&.
His impossibly long tongue brings fear over me&.

In this colorless space&, I found the deep red of it both 
extremely strange and oddly fascinating&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_��01");
	MusicStart("SE01",0,500,0,600,null,false);

	CreateColorSP("�G�F����", 5001, "000000");
	DrawTransition("�G�F����", 500, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Delete("�G�d�u1103");
	Delete("�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Noiz held both sides of my face with both of his hands and brought my face closer&.

I reflexively pull myself back&.&.&.
Then I rememeber Noiz's words&.

He said that he couldn't feel anything else but his tongue&.

This isn't the real world&.

He might've been exaggerating when he said it was only his tongue&.

The only part of his body that allowed him to feel&.
&.&.&.Then&.

The part of him that felt like it was "alive"&.&.&.
I have to accept him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�F*", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/2000030a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I felt the anxiety and tension build up at the nape 
of my neck&.

I&.&.&.opened my shivering lips to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I reached out to his long tongue and closed my eyes&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,700,0,800,null,false);
}
Something lukewarm entered inside my mouth&.

&.&.&.Noiz&.

I'll accept you&.

So&.&.&.

&.&.&.Come back&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm2430scr.nss"]

}
