//<continuation number="120">
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


scene dm3520.nss_MAIN
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
	#ev900�̂̍r��Ă����ta=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3530.nss";

}


scene dm3520.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	//OnBG(10,"bg101011_1_���Z����ʂ�\");
	//FadeBG(0,true);

//	CreateTextureSP("�G������", 3000, Center, Middle, "cg/data/noize_01_00_0.png");
//	Zoom("�G������", 0, 1100, 1100, null, true);
//	SetBlur("�G������", true, 2, 500, 10, false);
//	Shake("�G������", 60000000, 0, 20, 0, 0, 1000, null, false);

	CreateSE("SE11","se�[��_����_�m�C�Y01L");//�������u�r�d�Fse�[��_����_�m�C�Y01�v
	MusicStart("SE11",0,400,0,1000,null,true);
	dm3520noize();
	dm3520noizeFade(0,1000);

	FadeDelete("��w�i", 0, null, true);


//���������瑓�t�̉ߋ��i�g���E�}�V�[���j�`������
//�������u�m�F�F�m�C�Y�̏�ɃV�[���悹���ق����ǂ����v

	CreateSE("SE01","se�[��_����_�L�[��01");//�������u�r�d�Fse�[��_����_�L�[��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateMaskEX("�G��", 0, 0, 0, "cg/data/effect_01_00_0.png", false);
	CreateTextureSP("�G��/�G�d�u", 3100, Center, Middle, "cg/ev/ev900�̂̍r��Ă����t.jpg");#ev900�̂̍r��Ă����ta=true;
	Wait(30);
	Fade("�G��/�G�d�u", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000010a01">
"Is this all you've got?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000020a01">
"Shouldn't you use what you have? Come on&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Is that&.&.&.

My voice?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000030a01">
"It's not like you're going to break anything&. I don't
 exactly get your reasons&, but I've been watching you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	CreateSE("SE01","se�[��_����_�L�[��01");//�������u�r�d�Fse�[��_����_�L�[��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G��/�G�d�u", 0, 1000, null, true);
	Wait(30);
	Fade("�G��/�G�d�u", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
This is&.&.&.

&.&.&.Me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

SoundPlay("@dm006",0,450,true);

	SetVolumeEX("SE11", 1000, 0, null);

	CreateTextureEX("�G����", 1100, Center, Middle, "cg/bg/bg101051_5_���Z����ʂ藠�H�n06���C���������u.jpg");
	Fade("�G����", 0, 1000, null, true);
	dm3520noizeFade(1000,75);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
A crowd of people around my age come in doing whatever 
they please&.

There are people taking drugs&, playing around with girls&, 
drinking booze&, and some sleeping&. And&.&.&. some doing Rhyme&.

I mix in with them&, and walk up to the Rhyme players I 
know&.

I'm watching myself do this&.
I'm on the outside looking in&.

But sometimes a weak sound buzzes&.

Like I was immersed in a 3D film&, the fake world I had 
never seen before expanded around me&.

&.&.&.One that I've never seen before?

Wrong&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I&.&.&. know this place&. I've been here&.
And a number of times&, too&.

This is&.&.&.

My past&.

My rough years&.&.&. The memories I had forgotten&.

But why right now&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
//����ʂ����C���o�g�����ɐ؂�ւ��
	CreateTextureEX("�G�w�i1", 1000, 0, 0, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	Fade("�G�w�i1", 0, 1000, null, true);
	Delete("�G����");

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�t���b�V����", 200, null,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000040a01">
"No need to say anything! I can already see it all!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
&.&.&.That's right&, that time&.

For reasons unknown&, I could see my opponent's weaknesses 
in Rhyme&, and that made me an unrivaled champion&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 1000, 0, -200, "cg/ev/m/ev900�̂̍r��Ă����t_m.jpg");
	Move("�G�w�i", 500, -256, 0, Dxl1, false);
	CreateSE("SE01","se�[��_����_�͔ėp01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�w�i", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000050a01">
"This is boring as fuck&, so I'm gonna just smash you
 right now!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I never wondered why or how I could see that kind of thing&.

It was useful&, anyway&.

That's what I thought&.
That was me back then&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	Fade("�G�t���b�V����", 0, 1000, null, true);
	Fade("�G�t���b�V����", 50, 0, null, true);
	Fade("�G�t���b�V����", 0, 1000, null, true);
	Delete("�G�w�i");
	FadeDelete("�G�t���b�V����", 100, null,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000060a01">
"Haha&, hahahaha! Ahahahahaha! See you!"

//�y�ΐ�ҁz
<voice name="�ΐ��" class="�ΐ��" src="voice/dm35/2000070e57">
"Uwaahhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
&.&.&.Stop!!!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 500, "000000");

	SetVolumeEX("@dm*", 300, 0, null);
//�����t�̍U���őΐ�҂��_�E���A�Q�[���I�[�o�[
//���F�r�d�ԈႦ���炷���܂���
	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("�G�w�i1", 300, 1500, 0, DxlAuto, true);

	Wait(2000);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06���C���������u");
	FadeBG(0,true);

	CreateTextureEX("�Gbg", 100, Center, Middle, "cg/bg/bg101051_5_���Z����ʂ藠�H�n06���C���������u.jpg");
	Fade("�Gbg", 0, 1000, null, true);

	CreateTextureEXsub("�Gbg2", 100, 0, 0, "cg/bg/bg101051_5_���Z����ʂ藠�H�n06���C���������u.jpg");
	Zoom("�Gbg2", 0, 1025, 1025, null, true);

	CreateSE("SE11","se��_�K��_�����01L");//�������u�r�d�Fse��_�K��_�����01L�v
	MusicStart("SE11",2000,700,0,1000,null,true);

	CreateSE("SE12","se�敨_�~�}��_�T�C����01L");//�������u�r�d�Fse�敨_�~�}��_�T�C����01L�v
	MusicStart("SE12",2000,700,0,1000,null,true);

	CreateSE("SE20","se�l��_�S��_�ۓ�02L");

	dm3520RED(100);
	FadeDelete("�G�F��",2000,null,true);
	SetVolumeEX("SE12", 5000, 0, null);


//����ʐ؂�ւ��H
//�����킴��Ɛl������߂����A�~�}�Ԃ̉��Ƃ��H
//	CreateSE("SE11","se��_�K��_�����01L");//�������u�r�d�Fse��_�K��_�����01L�v
//	MusicStart("SE11",2000,700,0,1000,null,true);
//�������u���F�ԃ����v�̃v���Z�X�����A���񂾂�Ɛԃ����v���x���݂����Ȋ����ɂȂ��Ă����A���ł̑��x���オ��A�t���b�V����ԂցB���t�̌ۓ��Ɍq����C���[�W�v
//	CreateSE("SE12","se�敨_�~�}��_�T�C����01L");//�������u�r�d�Fse�敨_�~�}��_�T�C����01L�v
//	MusicStart("SE12",2000,700,0,1000,null,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
&.&.&.No&, please stop&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE1*", 2000, 0, null);
	MusicStart("SE20",5000,600,0,1000,null,true);
	dm3520REDS(500,50);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm35/2000080b04">
"A direct hit to the brain&."

{	Shake("�Gbg", 300, 0, 3, 0, 0, 1000, null, false);
	SetVolumeEX("SE20", 200, 600, null);
	dm3520REDS(600,50);}
//���L�������N���킩��Ȃ��悤�Ɋ�\���Ȃ�
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm35/2000090b09">
"It's always worked like this&. They never come back too&."

{	Shake("�Gbg", 300, 0, 3, 0, 0, 1000, null, false);
	SetVolumeEX("SE20", 200, 700, null);
	dm3520REDS(700,50);}

//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm35/2000091b09">
"Rhyme Name: Sly Blue&, huh&.&.&. He's a reckless one&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Shake("�Gbg", 300, 15, 5, 0, 0, 1000, null, false);
//���L�������N���킩��Ȃ��悤�Ɋ�\���Ȃ�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
No&.
I don't want to remember&.

{	Shake("�Gbg", 300, 10, 5, 0, 0, 1000, null, false);
	Fade("�Gbg2", 0, 1000, null, true);
	Fade("�Gbg2", 200, 0, null, false);}
That's&.&.&.

{	Shake("�Gbg", 300, 10, 5, 0, 0, 1000, null, false);
	Fade("�Gbg2", 0, 1000, null, true);
	Fade("�Gbg2", 200, 0, null, false);}
That's&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Shake("�Gbg", 300, 10, 5, 0, 0, 1000, null, false);
	Fade("�Gbg2", 0, 1000, null, true);
	Fade("�Gbg2", 1000, 0, null, false);}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	dm3520REDS(700,300);
	Fade("�Gbg2", 8000, 600, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000100a01">
"&.&.&.No-"

{	dm3520REDS(750,400);}
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000110a01">
"No&.&.&. I couldn't&.&.&. I couldn't have done-"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
I didn't know&.

That by seeing someone's weakness&, I was tampering with 
the part of a person's mind that I shouldn't have&.

I didn't know&, and took pride and superiority in being 
able to see&.&.&.

I&.&.&. 

{	dm3520REDS(800,500);}

broke people&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	dm3520REDS(900,700);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I broke their minds&.

I destroyed and crushed a part of their being&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, null);

	dm3520REDS(1000,900);
	Shake("�Gbg", 100000, 5, 10, 0, 0, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//���ߋ���z
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/2000120a01">
"AAAAAHHHHHHHHHHHHHHHHH!!!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 18000, "Black");
	Fade("�G�F��", 100, 1000, Axl2, false);
	DrawTransition("�G�F��", 1000, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	dm3520REDDelete();
	dm3520noizeFade(0,0);
	Delete("�Gbg");
	Delete("�Gbg2");
	Delete("�G�w�i1");
	Delete("�G��/�G*");
	Delete("�G��");

	ClearFadeAll(0, true);
	Wait(1000);

//�����t�@�C��["dm3530.nss"]


}
