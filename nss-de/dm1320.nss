//<continuation number="220">
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


scene dm1320.nss_MAIN
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
	$GameName = "dm1330.nss";

}


scene dm1320.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm013",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg306021_5_�q�ɓ����������");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu�g��_�ʏ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

	SetVolume("@dm*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	DeleteAllSt(200,true);
	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/2000010e47">
"Koujaku-san!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
A Beni-Shigure member calls out and starts running towards us&.

Both Koujaku and I are startled and pull away our hands&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

{	St("C",740, @0,@0,"st�g��_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000020a02">
"Yo&, what's up?"

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/2000030e47">
"I've recieved a call that we've found that bastard in the
 kimono&. He was seen going into Oval Tower&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000040a02">
"Oval Tower&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/2000050a01">
"Oval Tower&.&.&. you mean Platinum Jail's control tower?"

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000060a02">
"Techincally it's also the control center&. It's actually
 Toue Inc&.'s head office&, I've heard&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/2000070a01">
"Toue Inc&.'s headquarters? Why would Ryuuhou be there?"

{	St("C",740, @0,@0,"st�g��_�ʏ�_think");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000080a02">
"Could he be working with Toue?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/2000090a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Koujaku's eyes light up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000100a02">
"All right&. We're heading over to Oval Tower&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/2000110e47">
"Let's go!"

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/2000120a01">
"But how will we get inside? You usually can't just walk
 in&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000130a02">
"We'll go behind the scenes&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/2000140e47">
"Right&. According to the guys who were following the kimono bastard&, they said there was a separate employee entrance&, and security isn't so tight there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000150a02">
"Then let's attack from there&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/2000160e47">
"Understood!"

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000170a02">
"Aoba&, are you coming too?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Koujaku looks at me to confirm&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/2000180a01">
"You should know the answer to that&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000190a02">
"Because that's how we are together&, huh?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Koujaku makes a funny smile&, and I start to smile too&.

We're going to go find Toue and Ryuuhou&.

Thinking about it&, it's still strange&.

Koujaku and I are looking for different people&, yet at the end we're going the same way&.

Now I should be able to foil Toue's plans&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�g��_�ʏ�_shout");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/2000210a02">
"Head out!"

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/2000220e47">
"Yessir!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
We leave the warehouse and make our way to Oval Tower&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(1000);

//�����t�@�C��["dm1330.nss"]

}
