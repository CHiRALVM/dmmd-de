//<continuation number="700">
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


scene dm1370.nss_MAIN
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
	#ev137�g�����o=true;
	#ev137�g�����ob=true;

	#bg304102_5_���]�^���[���z�[���A���O����=true;
	#bg304091_5_���]�^���[���z�[��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1380.nss";

}


scene dm1370.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSPadd("�G����", 5000, "FFFFFF");
	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);

	Delete("��w�i");
	FadeDelete("�G����", 2000, null, true);


	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Inside is a wide hall&, just as I thought there would be&.

One man stands in the center of it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(16);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);


	Fade("�G�w�i", 300, 1000, null, true);

	St("C",740, @0,@0,"bu����_�ʏ�_normal");
	FadeSt("C",300,true);

	SoundPlay("@dm007a",0,450,true);

	Wait(500);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000010a02">
"&.&.&.Ryuuhou&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Ryuuhou didn't have on his cheerful expression that I'd 
come to know&, but rather was smiling with only his sharp 
eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(500,false);
	FadeDelete("�G�w�i", 500, null, true);

	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",300,true);

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000020b05">
"Koujaku&. I knew you'd come&."

{	Fw("fw�g��_�ʏ�_angry4");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000030a02">
"You bastard&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000040a01">
"Ryuuhou&.&.&."

{	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000050b05">
"Hello&, so you came too&, Aoba-kun&. How nice&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000060a01">
"&.&.&.&.&."

{	Fw("fw�g��_�ʏ�_angry2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000070a02">
"Don't fuck around&. You won't lay one hand on him&."

{	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000080b05">
"Isn't that just your problem? I don't know if I'll get my
 hands on him just yet&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000090a02">
"Ryuuhou&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Koujaku raises his voice and pulls out the longsword off 
of his back&.

The atmosphere in the entire room changes&.
This again&.&.&. Koujaku's acting strange&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_�i�C�t�\����01");
	MusicStart("SE01",0,700,0,1000,null,false);

{	St("C",740, @0,@50,"st�g��_�퓬����_rage");
	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, null, false);
	Move("@StNameC/C*", 300, @0, @-50, Dxl1, false);

	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000100a02">
"Urrrgh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
Koujaku pulls off the scabbard and grips the sword with 
both of his hands&.

His brow furrows into a deep wrinkle&, and he appears 
terrifyingly hostile&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000110b05">
"If I get you&, Aoba-kun&, you'll be my second&.&.&. No&, another one of my most wonderful masterpieces&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�퓬����_rage");
	FadeSt("C",200,true);

	CreatePlainEX("�G��", 5000);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000120a02">
"Draw your weapon! I won't even let you lay a finger on
 him!"

{	Fw("fw����_�ʏ�_normal");}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000130b05">
"You shouldn't be too angry&, now&. Do you remember what I
 told you?"

{	St("C",740, @0,@0,"st�g��_�퓬����_shout");
	FadeSt("C",200,true);
	Fade("�G��", 0, 500, null, true);
	Shake("�G��", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("�G��", 300, null, false);
	Zoom("�G��", 300, 1100, 1100, null, false);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000140a02">
"Shut the hell up!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Koujaku roars&, and the air shivers&.

&.&.&.I need to stop him&, or else&.

When Koujaku becomes like this&, I can see him turn into a 
body of pure rage&.

If he becomes consumed by this&, he might not even be able 
to return back&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The thought of that makes me shiver&.
I need to stop it before it happens&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�ς���A�Ǝ��@����
//�i���􂪁A���������]�����g���̃`�[�������o�[�����̍��}�œ������Ă���j

{	Fw("fw���t_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000150a01">
"Kouja&.&.&.!"

{
	DeleteFw();
	CreateSE("SE01","se�l��_����_�w�炷01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	Fw("fwm�g���`�[��A_���]_normal");
}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/7000160e47">
"&.&.&.Aoba-san&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000170a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��", 990);
	OnBG(10,"bg304102_5_���]�^���[���z�[���A���O����");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
When I turn around I suddenly see the members of Beni-
shigure&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000180a01">
"You guys&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
One of the members grabs my shoulders&.

&.&.&.There's something strange about him&.
When I look at his face&, I feel a sense of discomfort&.

&.&.&.His eyes are dull&.
They're empty&. Expressionless&, like a doll's&.

I know these eyes&. I've seen them before&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G��z", 1050, Center, Middle, "cg/ev/ev069�~�Y�L�l�������.jpg");

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062a]
When Mizuki was being controlled&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G��z");

	EfRecoIn2(400);

	SoundPlay("@dm006",0,450,true);

//�������u�f�ޗv�]�F�n�C���C�g�����̍g���`�[���o������v

{	Fw("fwm�g���`�[��A_���]_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0069]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm13/7000190e47">
"You shouldn't stop Koujaku-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000200a01">
"What are you saying&.&.&. then he'll-!"

{	Fw("fwm�g���`�[��B_���]_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/7000210e48">
"This is what Koujaku-san wants&. Stopping him would be
 tasteless&. That is the only thing I cannot let you do&,
 Aoba-san&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000220a01">
"&.&.&.&.&."

{	Fw("fwm�g���`�[��B_���]_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm13/7000230e48">
"Watch them until the end&.&.&. Together&, with us&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0078]
This is what Koujaku wants?
For us to watch them until the end?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
&.&.&.No!
If I do that&, then&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000240a01">
"&.&.&.Let me go&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,20,0,0,0,1000,null,true);


	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
The grip on my shoulders loosens&. 
But then other members come over to hold my body down even more&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000250a01">
"Urk&.&.&. Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���F�R�R��ӂ����ʕ����Ƃ��H�v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
I look over to Koujaku&, wondering if he even hears me&.
I can only see traces of his original self left in his 
eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i�g��", 100, 200, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	SetShade("�G�w�i�g��", HEAVY);
	Zoom("�G�w�i�g��", 0, 2000, 2000, null, true);
	St("ML",740, @-20,@0,"bu�g��_�퓬����_normal2");

	Fade("�G�w�i�g��", 200, 1000, null, false);
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000260a02">
"&.&.&.What are you guys doing?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateMaskEX("�G����ʉE", 0, 0, 0, "cg/mask/ci�X���b�V��_05_01.png", false);
	CreateTextureSP("�G����ʉE/�G���w�i", 1010, -200, 0, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	Zoom("�G����ʉE/�G���w�i", 0, 2000, 2000, null, true);
	SetShade("�G����ʉE/�G���w�i", HEAVY);
	CreateTextureSP("�G��������", 2010, 0, 0, "cg/mask/ci�X���b�V��_05_00z.png");
	CreateTextureSP("�G����ʉE/�G������", 1010, 429, -76, "cg/bu/bu����_�ʏ�_pride.png");

//	St("R",1740, @0,@0,"st����_�ʏ�_normal");
//	FadeSt("R",0,true);

	DrawDelete("�G��", 200, 100, null, "slide_02_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000270b05">
"Shall I tell you something interesting?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
Ryuuhou points to me and the other members&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G����ʉE/�G������", 1010, 429, -76, "cg/bu/bu����_�ʏ�_normal.png");
	Fade("�G����ʉE/�G������", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G������", 300, Axl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000280b05">
"Do you see their necks? Look at the thin wounds&. They're
 on Aoba-kun too&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000290a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0096]
Without thinking&, I look towards the neck of one of the 
members&.

There are deep traces of needle marks&.
Those are on my neck as well&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Wait&.&.&.
I think Koujaku said something about that too&.

That there were needle marks on my neck&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
{	St("ML",740, @-20,@0,"bu�g��_�퓬����_rage");
	FadeSt("ML",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000300a02">
"Fucker&, what did you do to my members and Aoba&.&.&.!"

{	CreateTextureEX("�G����ʉE/�G����1", 1010, 429, -76, "cg/bu/bu����_�ʏ�_pride.png");
	Fade("�G����ʉE/�G����1", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G������", 300, Axl3, true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000310b05">
"You know&, when I saw Aoba-kun loitering around the front
 of the club entrance&, it was love at fist sight&. So on a
 passionate impulse&, I pricked him&."

{	CreateTextureEX("�G����ʉE/�G����2", 1010, 429, -76, "cg/bu/bu����_�ʏ�_pride.png");
	Fade("�G����ʉE/�G����2", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����1", 300, Axl3, true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000320b05">
"With a sort of mind altering drug&. I wanted to see how
 he'd respond&, how he'd come undone&. But you interrupted
 halfway&."

{	CreateTextureEX("�G����ʉE/�G����1", 1010, 429, -76, "cg/bu/bu����_�ʏ�_normal.png");
	Fade("�G����ʉE/�G����1", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����2", 300, Axl3, true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000330b05">
"I knew you had come here&, so I had to make a more solid
 plan&."

{	CreateTextureEX("�G����ʉE/�G����2", 1010, 429, -76, "cg/bu/bu����_�ʏ�_normal.png");
	Fade("�G����ʉE/�G����2", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����1", 300, Axl3, true);}

//�y����z
<voice name="����" class="����" src="voice/dm13/7000340b05">
"Two objectives&. How I'd get Aoba-kun&. And how I could
 quickly stir you up so you could grow out your tattoo
 a bit&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @-20,@0,"bu�g��_�퓬����_pinch");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000350a02">
"Urk&.&.&.&.!"

{	CreateTextureEX("�G����ʉE/�G����1", 1010, 429, -76, "cg/bu/bu����_�ʏ�_pride.png");
	Fade("�G����ʉE/�G����1", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����2", 300, Axl3, true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000360b05">
"Just so I could prepare for you&, I visited the Old
 Resident District a few times&. To set some things up
 with your petty comrades&."

{	St("ML",740, @-20,@0,"bu�g��_�퓬����_pain");
	FadeSt("ML",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000370a02">
"You couldn't have&.&.&."

{	CreateTextureEX("�G����ʉE/�G����2", 1010, 429, -76, "cg/bu/bu����_�ʏ�_normal.png");
	Fade("�G����ʉE/�G����2", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����1", 300, Axl3, true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000380b05">
"Yes&. Don't you know my needle well? My ever so strictly
 diligent needle penerates their bodies&, and changes their
 hearts&.&.&."

//�y����z
<voice name="����" class="����" src="voice/dm13/7000390b05">
"With that&, just one little prick is enough&. They can't
 feel a hint of pain&. Maybe as much as a bug biting them&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G����ʉE/�G����1", 1010, 429, -76, "cg/bu/bu����_�ʏ�_pride.png");
	Fade("�G����ʉE/�G����1", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����2", 300, Axl3, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000400b05">
"By the time you came into my room&, they were already my
 puppets&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 5000, Center, Middle, "cg/bg/bg304102_5_���]�^���[���z�[���A���O����.jpg");
	Fade("�G�w�i", 300, 1000, null, true);


//���r�d�F�ς���A�Ǝ��@����
	CreateSE("SE01","se�l��_����_�w�炷01");
	MusicStart("SE01",0,700,0,1000,null,false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
Ryuuhou puts on a happy smile&, and claps once&.

{
	CreateSE("SE02","se�l��_����_�ߎC��03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreatePlainSP("�G��", 10000);
	Shake("�G��", 200, 0, 8, 0, 0, 500, null, true);
	Delete("�G��");
}
And when he does&, a member holding me down pulls me up by 
my arms&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000410a01">
"Ow&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
I'm not completely sure&, but that sound from the clap 
Ryuuhou made&.&.&.

Is he controlling the members with just clapping&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G����ʉE/�G����1", 1010, 429, -76, "cg/bu/bu����_�ʏ�_normal.png");
	Fade("�G����ʉE/�G����1", 0, 1000, null, false);

	Fade("�G�w�i", 300, 0, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0125]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000420a02">
"&.&.&.&.Rrgh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	CreateTextureEX("�G����ʉE/�G����2", 1010, 429, -76, "cg/bu/bu����_�ʏ�_normal.png");
	Fade("�G����ʉE/�G����2", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����1", 300, Axl3, true);}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000430b05">
"Whether or not Aoba-kun and these others live or die has
 been in our hands even more than ever now&."

{	St("ML",740, @-20,@0,"bu�g��_�퓬����_rage");
	FadeSt("ML",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000440a02">
"Bastard&, I'll never forgive you&.&.! I'll beat you to death&, right here&, right now!"

{	CreateTextureEX("�G����ʉE/�G����1", 1010, 429, -76, "cg/bu/bu����_�ʏ�_pride.png");
	Fade("�G����ʉE/�G����1", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����2", 300, Axl3, true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000450b05">
"Ahah&. You really did forget what I told you&."

{	CreateTextureEX("�G����ʉE/�G����2", 1010, 429, -76, "cg/bu/bu����_�ʏ�_serious.png");
	Fade("�G����ʉE/�G����2", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����1", 300, Axl3, true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000460b05">
"When that tattoo was put on you&, you were just a child;
 luckily&, you've come back&."


//�y����z
<voice name="����" class="����" src="voice/dm13/7000470b05">
"I'm pretty sure I told you to be careful when you became
 an adult&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureSP("�G�w�i15", 15, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateTextureEX("�G����ʉE/�G����1", 1010, 429, -76, "cg/bu/bu����_�ʏ�_smile.png");

	Fade("�G����ʉE/�G����1", 200, 1000, null, false);
	FadeDelete("�G����ʉE/�G����2", 300, Axl3, true);

	CreateTextureEX("�G����ʉE/�G����2", 1010, 429, -76, "cg/bu/bu����_�ʏ�_mad.png");

	CreateTextureEX("back", 5000, Center, Middle, "cg/bg/bg304102_5_���]�^���[���z�[���A���O����.jpg");
	SetShade("back", HEAVY);
	Zoom("back", 0, 2000, 2000, null, true);
//	Fade("back", 0, 1000, null, true);
	SetBlur("back", true, 2, 500, 30, false);
	Request("back", Smoothing);

	CreateTextureEX("koujaku01", 5000, center, middle, "cg/fu/fu�g��_�퓬����_rage.png");
	SetBlur("koujaku01", true, 2, 500, 30, false);
	Request("koujaku01", Smoothing);


	DelayFadeCreate("@�G����ʉE/�G����2","@�G����ʉE/�G����1",2000,200,300);

//	Fade("�G����ʉE/�G����2", 200, 1000, null, false);
//	FadeDelete("�G����ʉE/�G����1", 300, Axl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000480b05">
"Okay? &.&.&.Koujaku&, you mother-killer&."

{
	CreateSE("SE02","se�l��_�S��_�ۓ�01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("back", 300, 2000, 2000, Dxl2, false);
	Zoom("koujaku01", 300, 1500, 1500, Dxl1, false);
	Fade("back", 0, 1000, null, true);
	Fade("koujaku01", 0, 1000, null, true);


}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000490a02">
"Don't say iiiit!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(16);
	CreateSE("SE11","se�[��_���__�Ђ�01");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 10000);
	SetBlur("�G��", true, 3, 500, 50, false);

	DeleteAllSt(0,true);

	Delete("�G����ʉE/*");
	Delete("�G��*");
	Delete("�G�w�i�g��");
	Delete("�G�w�i");
	Delete("koujaku01");
	Delete("back");

	Zoom("�G��", 200, 1200, 1200, Axl2, false);
	FadeDelete("�G��", 200, null, false);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0142]
Koujaku's whole body shakes as he roars&. 

It seems like his entire body is swelling up&.
I thought it was an illusion&.&.&. But it isn't&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);


	Wait(16);

	CreateSE("SE00","se�[��_�h��_������01L");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateColorEX("��", 15000, "BB0000");
	Fade("��", 100, 1000, null, true);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	CreateSE("SE02","se�l��_�S��_�ۓ�01");
	CreateSE("SE03","se�l��_�S��_�ۓ�01");
	CreateSE("SE04","se�l��_����_�i�߂�01");
	CreateSE("SE05","se�퓬_��_������01");


	CreateTextureEX("�G�d�uL", 1100, 0, 0, "cg/ev/l/ev137�g�����o_l.jpg");
	Request("�G�d�uL", Smoothing);
	Move("�G�d�uL", 0, 221, 107, null, true);
	Zoom("�G�d�uL", 0, 1800, 1800, null, true);
	SetBlur("�G�d�uL", true, 2, 500, 70, false);

	Fade("��", 0, 1000, null, true);
	Fade("�G�d�uL", 1000, 1000, null, true);


	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	MoveFTP1("@�G�d�uL",1500,10,7);
	Shake("�G�d�uL", 500, 0, 20, 0, 20, 500, null, true);

	Fade("��", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�G�d�uL", 200, 2000, 2000, Dxl1, true);
	Zoom("�G�d�uL", 1000, 1800, 1800, null, false);

	Wait(500);

	Fade("��", 100, 1000, null, true);

	SetBlur("�G�d�uL", false, 2, 500, 100, false);
	MoveFTP1stop();
	Move("�G�d�uL", 0, -621, -486, null, true);
	Zoom("�G�d�uL", 0, 1800, 1800, null, true);
	SetBlur("�G�d�uL", true, 2, 500, 100, false);
	MoveFTP1("@�G�d�uL",1500,10,7);

	Fade("��", 100, 0, null, false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("�G�d�uL", 200, 2000, 2000, Dxl1, true);
	Zoom("�G�d�uL", 1000, 1800, 1800, null, false);

	Wait(500);

	Fade("��", 100, 1000, null, true);

	SetBlur("�G�d�uL", false, 2, 500, 100, false);
	MoveFTP1stop();
	Move("�G�d�uL", 0, -195, 152, null, true);
	Zoom("�G�d�uL", 0, 1800, 1800, null, true);
	SetBlur("�G�d�uL", true, 2, 500, 100, false);
	MoveFTP1("@�G�d�uL",1500,10,7);

	Fade("��", 100, 0, null, false);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("�G�d�uL", 200, 2000, 2000, Dxl1, true);
	Zoom("�G�d�uL", 1000, 1800, 1800, null, false);

	SetVolumeEX("SE00", 1000, 0, null);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0144]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000500a02">
"Guhh&, grahhhhhhhhhhh!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
All of the muscles in Koujaku's body grow tense&, and 
something like a roar bursts from his now bare chest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Fade("��", 200, 1000, null, true);

	Shake("�G�d�uL", 0, 0, 10, 0, 0, 500, null, false);
	SetBlur("�G�d�uL", false, 2, 500, 100, false);
	MoveFTP1stop();
	Move("�G�d�uL", 0, -512, -288, null, true);
	Zoom("�G�d�uL", 0, 800, 800, null, true);
	SetBlur("�G�d�uL", true, 2, 500, 100, false);
	MoveFTP1("@�G�d�uL",1500,5,3);
	Zoom("�G�d�uL", 1000, 600, 600, Dxl2, false);

	Fade("��", 300, 0, null, true);

	Wait(1000);
	CreateTextureEX("�G�d�uL2", 1100, 0, 0, "cg/ev/l/ev137�g�����o_l.jpg");
	Request("�G�d�uL2", Smoothing);
	Zoom("�G�d�uL2", 0, 1500, 1500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150a]
On his now naked upper body&, the tattoo on his back is in 
clear view&.

When I look&.&.&. I tremble&.

{

	Move("�G�d�uL2", 20000, -200, 117, null, false);

	Fade("�G�d�uL2", 300, 1000, null, true);

}
On the left half of his upper body&, tree penoies should've 
been falling&.&.&. <k>But it's now completely changed&.

His exposed skin changes into a deep red&, into different 
patterns and shapes&. They coil around his back and up to 
his arms&.

As if the tattoo is alive&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�g��", 1100, Center, Middle, "cg/ev/ev137�g�����o.jpg");
	Fade("�G�g��", 500, 1000, null, true);
	MoveFTP1stop();
	Delete("�G�d�u*");

//	Wait(300);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0155]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000510a02">
"Guuhhh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0156]
I see nothing left in Koujaku's eyes as he takes rough 
breaths&. All there is is hatred and anger&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0157]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000520a01">
"Koujaku!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
I desperately call out to him&, but it doesn't reach his 
ears&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�g��", 500, null, true);

	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000530b05">
"Hoh&.&.&. This is quite a sight&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0162]
Ryuuhou stares lovingly at Koujaku's transformation&, and a grin spans across his entire face&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0163]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000540b05">
"Your tattoo was a one-time experiment&. It wasn't formally
 called one&.&.&. It was a request&. From Toue&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000550a01">
"Toue&.&.&.!?"

{	St("C",740, @0,@0,"st����_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000560b05">
"Tattoos are parts of people&, a sort of seal&. You're stuck
 with them until the end&. It's important to be prepared for
 that&. It's the same way with tattoos&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000570b05">
"Toue was looking for a way to control people&. He must've
 heard a rumor about me&, since he proposed an idea to me&."

{	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000580b05">
"That it'd be possible to control people from a tattoo&. I
 thought it was an interesting idea&. He piqued my interest&.
 And I chose you&, Koujaku&, to be the subject&."

{	St("C",740, @0,@0,"st����_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000590b05">
"That tattoo wonderfully eats away at your mind&, I can
 already see it taking over&. I gave you warnings to never
 lose control over yourself&, but you're such an idiot&."

{	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000600b05">
"It's been growing inside of you&. Because you hadn't yet
 matured&, neither had your tattoo&, so you could revert
 back after a fit of anger&."

{	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm13/7000610b05">
"But now that you're an adult&, the tattoo has matured&. It
 absorbs your anger&, and finally eats away at you until
 there's nothing left&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//original: It's been growing inside of you&. You're so immature that  your tattoo was as well&, so you could go back after a fit  of anger&.

	St("C",740, @0,@0,"st����_�ʏ�_mad2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000620b05">
"That's when you two finally unify&, when the real flower
 blooms&. It feeds on your vitality&, and when it burns it
 all off&, it'll become a lovely flower&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	CreateTextureEX("�G�d�u�k", 1100, Center, Middle, "cg/ev/l/ev137�g�����ob_l.jpg");
	CreateTextureEX("�G�d�u", 1100, Center, Middle, "cg/ev/ev137�g�����ob.jpg");

	Move("�G�d�u�k", 2500, -1024, @0, Dxl1, false);
	Fade("�G�d�u�k", 500, 1000, null, true);

	Wait(1500);
	Fade("�G�d�u", 500, 1000, null, true);

	Wait(500);
*/

	Wait(16);

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);


	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_�i�C�t�\����01");

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");

	CreateTextureEX("�b/ev01", 800, Center, Middle, "cg/ev/x/ev137�g�����ob_x01.png");
	CreateTextureEX("�b/ev02", 500, -637, -277, "cg/ev/x/ev137�g�����ob_x02.png");
	CreateTextureEX("�b/ev03", 200, 946, 161, "cg/ev/x/ev137�g�����ob_x03.png");
	CreateTextureEX("�b/ev04", 20, Center, Middle, "cg/ev/x/ev137�g�����ob_x04.jpg");
	Zoom("�b/ev01", 0, 2000, 2000, null, true);
	Zoom("�b/ev02", 0, 700, 700, null, true);
	Zoom("�b/ev04", 0, 4000, 4000, null, true);
	Request("�b/*", Smoothing);

	Fade("�b/*", 0, 1000, null, true);
	MoveFFP1("@�b/*",14000,5,3);

	CreateMovieSP("���P", 1500, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("���P", 0, 5000, 5000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);

	MoveCamera("�b", 800, -300, @0, 500, AxlDxl, false);
	FadeDelete("�G��", 500, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(300);

	MoveCamera("�b", 3000, 0, @0, 500, AxlDxl, false);

	Wait(2000);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
Ryuuhou looks extremely happy&, and with a twisted grin&, he opens up his arms&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("ev00", 1500, Center, Middle, "cg/ev/ev137�g�����ob.jpg");
	Zoom("ev00", 0, 2000, 2000, null, true);
	SetBlur("ev00", true, 2, 500, 50, false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0182]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000630b05">
"Soon I'll have no more regrets&. As a result of your sense
 and my persistance clashing&, I'm the winner here&.&.&. Now&,
 in exchange&."

//�y����z
<voice name="����" class="����" src="voice/dm13/7000640b05">
"Take away my spirit&."

{
	Zoom("ev00", 200, 1000, 1000, Dxl2, false);
	Fade("ev00", 200, 1000, null, true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/7000650a02">
"&.&.&.Ryuuhouuuuuuuuuuuu!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_shout2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0189]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000660a01">
"No&, Koujaku&, stop!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("ev00", 200, null, false);

	MoveCamera("�b", 200, -300, -200, 1000, AxlDxl, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
My voice won't reach him&.&.&.

Koujaku takes his blade and aims it at Ryuuhou&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000670a01">
"Koujaku&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 100, 0, null);

	CreateColorEX("�G�F��", 5000, "CC0000");

//���r�d�F�������Ƒ匕���̂��т�
	CreateSE("SE01","se�퓬_����_�q�b�g04");//�������u�r�d�F�v


	MoveCamera("�b", 300, 280, 0, 1000, Axl3, true);
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�F��", 0, 1000, null, true);
	CreateColorSP("�G�F��", 100, "000000");

	MoveFTP1stop();
	Delete("�b/*");
	Delete("�b*");
	Delete("���P");

	Wait(500);
	FadeDelete("�G�F��", 1000, null, true);

	Wait(1000);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/7000680a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0193]
An awful sound reverberates throughout the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_��_�����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("�G��������", 1010, Center, -188, "cg/ef/efx03���t�����01a.png");

	Wait(100);

	CreateSE("SE02","se�퓬_��_�����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateTextureSP("�G��������", 1010, Center, -188, "cg/ef/efx03���t�����01b.png");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0194]
The sword in Koujaku's hands pierces through the body of 
his worst enemy&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se�퓬_��_�����01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateTextureSP("�G�������O", 1010, Center, -188, "cg/ef/efx03���t�����01c.png");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0195]
The tip of the sword pokes through Ryuuhou's back and 
blood drips from it and trickles down onto the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE04","se�퓬_��_�����01");
	MusicStart("SE04",0,700,0,1000,null,false);
	CreateTextureSP("�G�������l", 1010, Center, -188, "cg/ef/efx03���t�����01d.png");

	Wait(100);

	CreateSE("SE05","se�퓬_��_�����01");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateTextureSP("�G��������", 1010, Center, -188, "cg/ef/efx03���t�����01e.png");


	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000690b05">
"&.&.&.&.&.&.Ghk&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(36);
	PrintGO("��w�i", 5000);

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	SetShade("�G�w�i", HEAVY);
	Fade("�G�w�i", 0, 1000, null, true);
	Zoom("�G�w�i", 0, 3000, 3000, null, true);

	CreateTextureEX("ryu", 110, 314, -338, "cg/fu/fu����_�ʏ�_mad2.png");
	Zoom("ryu", 0, 2000, 2000, null, true);
	Request("ryu", Smoothing);
	Fade("ryu", 0, 1000, null, true);

	CreateStencil("mask",1500,314, -338,128,"cg/fu/fu����_�ʏ�_mad2.png",false);
	Zoom("mask", 0, 2000, 2000, null, true);

	CreateTextureEXmul("mask/blood", 110, 40, 0, "cg/anime/blood02a_4.png");
	SetShade("mask/blood", HEAVY);
	Fade("mask/blood", 0, 1000, null, true);
	CreateTextureEXover("mask/blood1", 110, 0, 0, "cg/ef/efx03����01.jpg");
	SetShade("mask/blood1", HEAVY);
	Fade("mask/blood1", 0, 700, null, true);
	CreateTextureEXmul("mask/blood2", 110, 0, 200, "cg/anime/blood02b_2.png");
	SetShade("mask/blood2", HEAVY);
	Fade("mask/blood2", 0, 1000, null, true);


	FadeDelete("��w�i", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
Blood flows from Ryuuhou's mouth as he slouches over&.
&.&.&.But he's still smiling&.

The blood trickles down his smile&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
//�y����z
<voice name="����" class="����" src="voice/dm13/7000700b05">
"&.&.&.Haha&.&.&. To be killed- by my- best creation&.&.&. I've used up- my luck as- a tattoo artist&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0203]
A large amount of blood drizzles out of Ryuuhou's giant 
grin&.

He looks down and slumps further&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//���r�d�F��������Ƒ̂��猕����������
	CreateSE("SE01","se�퓬_����_�q�b�g03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G�F��", 5000, "000000");

	Wait(500);

	CreateSE("SE01","se�퓬_��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i", 5100, Center, Middle, "cg/ef/efx03����01.jpg");

	Fade("�G�w�i", 0, 800, null, true);
	DrawTransition("�G�w�i", 200, 0, 1000, 200, null, "cg/data/zoom_01_00_0.png", true);

	Delete("mask/*");
	Delete("mask*");
	Delete("�G��*");
	Delete("ryu");

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
Koujaku mercilessly pulls out his blade&.

{
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Even more blood darkens black on Ryuuhou's kimono&, and he 
tumbles to the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	FadeDelete("�G�w�i", 1000, null, true);
	FadeDelete("�G�F��", 1000, null, true);

	Wait(500);

//�����t�@�C��["dm1380.nss"]

}
