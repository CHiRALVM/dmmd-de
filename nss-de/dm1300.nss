//<continuation number="450">
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


scene dm1300.nss_MAIN
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
	$GameName = "dm1310lv.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=2;

}


scene dm1300.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm008",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg303031_5_��y�{�ݗ���̕���");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�ȉ��A����
//===========================================

//��������A�Ɠ���
//�����Ƀ��x���F��������Q
	//���ɃG�t�F�N�g(0)
$HALevel=2;
	HAFade(2000, 0,false);

	Wait(500);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000010a01">
"&.&.&.Guh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
My head&.&.&.

Shit&, not now&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//��������A������Ɠ���
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);
	Wait(100);
	HAFade(2000, 0,true);
//	Wait(100);
	//���ɃG�t�F�N�g(0)

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
My head hurts&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 25, 0, 0, 0, 500, null, true);
	Delete("�G��");
}
But I have to stop Koujaku&.&.&.

Koujaku&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F���]�̗͂������������̎��͉�������񂾂������H�v
//���͔���
//�����ɗ͍s�g����i���q
	Fw("fw���t_�ʏ�͍s�g_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000020a01">
"Koujaku&, calm down!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 150, 1000, Dxl1, true);
	Wait(100);
	FadeDelete("�G�F��", 150, Dxl1, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I bear with the pain enough to let out a yell&, and Koujaku comes to a complete halt&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	St("C",740, @0,@0,"st�g��_�ʏ�_sad");
	FadeStPro("C", 1500, 200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000030a02">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
Koujaku turns around&, his tattoo showing&, and his anger 
fades&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000040a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

	Move("�G�w�i", 150, @0, @-60, Dxl1, true);

	CreatePlainSP("�h�p", 5000);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�h�p", 300, 0, 5, 0, 0, 500, null, false);
	FadeDelete("�h�p", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I feel relieved and put my hands back down on the futon&.

Koujaku rushes to me and holds me up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, -21, -105, "cg/bg/m/bg303031_5_��y�{�ݗ���̕���_m.jpg");
	Move("�G�w�i100", 500, -21, -53, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

	St("C",740, @0,@0,"bu�g��_�ʏ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000050a02">
"Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000060a01">
"&.&.&.How about you?"

{	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000070a02">
"I'm&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Koujaku pauses&, and turns his gaze elsewhere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateTextureSP("�G��/�G�w�i", 1050, 70, -225, "cg/bg/l/bg303031_5_��y�{�ݗ���̕���_l.jpg");
	CreateTextureSP("�G��/�G��", 1000, 70, -225, "cg/bg/l/bg303031_5_��y�{�ݗ���̕���_l.jpg");
	CreateColorEX("�G��/�G�F��", 1001, "000000");
	Fade("�G��/�G�F��", 0, 500, null, true);

	SetShade("�G��/�G��", SEMIHEAVY);

	DrawTransition("�G��/�G�w�i", 0, 0, 260, 100, null, "cg/data/slide_06_00_1.png", true);


	Zoom("�G��/�G*", 0, 1100, 1100, null, true);

	FadeDelete("�G��", 500, null, true);

	Wait(1000);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 2000, Center, Middle, "cg/ev/ev118�g���̎h��.jpg");
	CreateTextureSPadd("�G���ʔw�i�\", 2001, Center, Middle, "cg/ev/ev118�g���̎h��.jpg");
	Fade("�G���ʔw�i�\", 0, 300, null, true);

	Delete("�G��*");
	Delete("�G��/�G*");

	EfRecoIn2(500);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
From what I gathered of their conversation&.&.&. those 
tattoos were from Ryuuhou&.

I don't know exactly why&, but Koujaku hates him with a 
passion&.

So he ended up losing control back there&.&.&.

But why did Ryuuhou do it to Koujaku?

And why does Koujaku hate him so much?

Why would Koujaku lose himself over it?

I try to put the two together&.&.&. but I can't&.

I don't even know how or why it came to that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");

	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",0,true);

	EfRecoIn2(400);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Koujaku is silent&, but then shakes his head and looks at 
me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_sad");
	St("C",740, @0,@0,"bu�g��_�ʏ�_cry2");
	FadeSt("C",200,true);
	FadeStPro("C", 8500, 200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000080a02">
"&.&.&.First&, I have to apologize to you&. I'm sorry&. And
 yesterday I&.&.&. for what I did then&, too&."

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",1000,700,0,1000,null,false);

	DeleteSt("C", 500,false);

	Wait(2000);

	CreatePlainSP("�h�p", 5000);

//���ǂ��ǂ��ƘL���𑖂鉹�����āA�h�A���o���I�ƊJ��
	CreateSE("SE01","se����_�h�A�S_���J������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�h�p", 300, 5, 0, 0, 0, 500, Dxl1, false);
	FadeDelete("�h�p", 300, Dxl1, true);

	Wait(500);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000100e47">
"Koujaku-san!"

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/0000110e48">
"Are you all right!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Suddenly&, I hear rowdy voices coming from the direction of the opened door&.

Koujaku bears a smile when he sees them&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000120a02">
"You guys are damn late&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000130e47">
"Forgive us!"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000140a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
A bunch of Beni-Shigure members bust through the door into the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000150a01">
"You guys&.&.&. how did you get here?"

{	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000160a02">
"We buttered up the police in the Old Resident District and made our way into Platinum Jail&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
The police there&.&.&.

Now that I think about it&, Beni-Shigure did have some 
police contacts&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000170a02">
"Isn't Toue having his special event soon? Seems that
 security is recruiting some of the police from the Old
 Resident District as well&."

{	St("C",740, @0,@0,"bu�g��_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000180a02">
"So they disguised themselves as policemen and got in&. The
 event is so quick that they're not doing harsh checks on
 background either&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000190e47">
"That's right&. I still get the chills thinking about if
 we'll get found out or not&."

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/0000200e48">
"Same here! Every time they checked for ID I felt like my
 heart would jump out of my chest!"

{	St("C",740, @0,@0,"bu�g��_�ʏ�_smile2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000210a02">
"Haha&, really? But it's great that you all are okay&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000220e47">
"Damn straight!"

{	St("C",740, @0,@0,"bu�g��_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000230a02">
"But that bastard&.&.&. He ran out on his heels&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Koujaku murmurs to himself&, frustrated&.
Because of Ryuuhou&, right?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000240a02">
"You are seriously a troublemaker&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000250a01">
"Yeah&."

{	
	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000260a02">
"Oh yeah&.&.&. Shit&, where'd he go?"

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/0000270e48">
"Are you talking about some guy wearing a kimono?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000280a02">
"Yeah&."

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/0000290e48">
"Then I'll go get the guys outside on watch to go get him!
 If we get any leads on some suspicious guy in in a kimono&,
 I'll contact you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_smile");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000300a02">
"Thank you&. Good job&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fwm�g���`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/0000310e48">
"Hehe&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0089]
As expected of Beni-Shigure&, team players really do work 
out well&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000320e47">
"So I'll contact you when we get info on where this kimono
 bastard is&. Right now the other members are in a warehouse
 on standby&. We got a tip about a key to the backdoor from
 the police&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000330a02">
"I see&. Then let's gather up all the members&. I need to get out of this dump as fast as I can&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000340e47">
"Yessir!"

{	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000350a02">
"Aoba&, we need to move&. Can you?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000360a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);

	Delete("�G�w�i*");

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000370a02">
"Here we go&."

Koujaku puts my arm around his shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/0000380e48">
"Aoba-san&, are you alright? I'll help you!"

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000390a01">
"Sorry&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
A member goes to the opposite side of Koujaku and gives me his shoulder as well&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000400e47">
"I also have your bag and Allmate&, Aoba-san!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/0000410a01">
"Thank you&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000420e47">
"Yes! I love dogs!"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm13/0000430a06">
"Arf arf!"

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/0000440e47">
//�����
"Ahyaha!"


{	Fw("fw�g��_�ʏ�_cool2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/0000450a02">
"Okay&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
The drugs Ryuuhou slipped me haven't faded off&, but I 
start to feel better emotionally with everyone here&.

We leave the building&, and head to the storehouse where 
the remainder of the members are&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm1310lv.nss"]

}
