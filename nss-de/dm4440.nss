//<continuation number="650">
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


scene dm4440.nss_MAIN
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
	
	#bg304121_5_���]�^���[���]�̊�=true;
	#bg304122_5_���]�^���[���]�̊�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4450_vs.nss";

}


scene dm4440.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm018",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, -372, "cg/bg/l/bg304131_5_���]�^���[���]�̊ԑO�L��_l.jpg");

	Delete("��w�i");

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se����_�h�A���]�̊�_���J��01a");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 2000, 1000, Axl1, true);

	SetVolumeEX("SE*", 2000, 0, null);

	Wait(2000);

	Delete("�G�w�i");

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateSE("SE01","se����_�h�A���]�̊�_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�F��", 2000, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
On the other side of the door we find a spacious room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",500,true);

	Wait(300);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/l/bg304121_5_���]�^���[���]�̊�_l.jpg");
	CreateTextureSP("�G���G", 700, Center, Middle, "cg/bu/bu���]_�ʏ�_normal.png");
	CreateTextureEX("�G���G��", 700, Center, Middle, "cg/bu/bu�N���A��_�ʏ�}�X�N�Ȃ�_normal.png");
	CreateTextureEX("�G���G�Q", 700, Center, Middle, "cg/bu/bu�N���A��2_�ʏ�}�X�N�Ȃ�_normal.png");

	Move("�G���G", 0, @0, @40, null, true);
	Move("�G���G��", 0, @206, @40, null, true);
	Move("�G���G�Q", 0, @-206, @40, null, true);

	DeleteAllSt(0,true);

	SetShade("�G�w�i", MEDIUM);

	FadeDelete("�G��", 800, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Standing there in the center is Toue&, and&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G���G", 300, null, true);
	Wait(100);
	Fade("�G���G*", 300, 1000, null, true);
	Wait(300);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
The two with the exact same faces as Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",0,true);
	Delete("�G��*");
	Delete("�G����");
	Delete("�G����");
	Delete("�G�w�i");

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
He's Toue&.&.&.

I knew his face from the TV&, but this is my first time 
seeing the real one&.

He stands in an elegant and calm manner&, looking like the 
gentleman he did on TV&.

But I know he isn't&.

He certainly does look refined&.
But his eyes show no hint of a smile&.

They're as sharp as a hawk's&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000010b02">
"You finally came&. Serial number R-2E-054&.&.&. Clear now&,
 is it not? So you must be Aoba-kun&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/4000020a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000030a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
He knows my name&.&.&.
So he did hear from those two over there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000040b02">
"I was given a report&. It seems that Clear recognizes you
 as his master&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000050b02">
"Well&, then&. Now&, on to why I invited the two of you here&.&.
 First&, let's talk about you&, Clear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);

	CreateTextureSP("�G���w�i", 1000, Center, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");

	St("C",1740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",0,true);
	FadeDelete("�G��", 500, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Toue's gaze shifts from me to Clear&.

Clear purses his lips together&, staring firmly at Toue&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);
	Delete("�G��*");

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",0,true);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000060b02">
"Clear is a defective R-2E type that was disposed of&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/4000070a01">
"! Disposed&.&.&.?"

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000080b02">
"Yes&. However&, the man in charge of the disposal must have
 lost his mind&, because he took Clear away&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000090b02">
"That man modified Clear&, changed his serial number&, and
 kept Clear a secret from us until death&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000100b02">
"He treated him just like his own son&. Without any relation to him&, as well; he must've been a lonely&, single man&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
That must be Clear's "Grandpa"&.

He must've been terrified by the fact that Toue's people 
might be looking for him because he was hiding Clear&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000110b02">
"Clear recognized you as his master because he is a
 defective product&. Furthermore&.&.&. he went against
 his own&."

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000120a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	DeleteAllSt(200,true);

	Wait(300);

	St("MR",700, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	St("ML",700, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Toue turns his head and glances at the two behind him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000130b02">
"He said that Aoba-kun was his master&, rather than me&,
 correct? That piqued my interest in Clear&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}

//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000140b02">
"It was originally input that I was his master&, but he
 chose to deny me and mistake who his real master was&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000150b02">
"Why did he recogonize you? That is of great interest to
 me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",0,true);

	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,850,0,1000,null,false);

	FadeDelete("�G��", 300, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000160a04">
"&.&.&.!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/4000170a01">
"Clear&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
Clear focuses on Toue&, and silently moves closer to him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000180a04">
"&.&.&.There's something I want to ask you&."

{	Fw("fw���]_�ʏ�_normal");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000190b02">
"Oh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
Toue's eyes narrow&, and he gently nods&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000200b02">
"Go ahead&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000210a04">
"Since you are my original master&, I have a question to ask of you&. Please tell me this&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000220a04">
"Is it possible for us to become human?"

{	Fw("fw���]_�ʏ�_normal");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000230b02">
"&.&.&.Human?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
Toue's grin widens in enjoyment&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000240b02">
"Do you mean&, to become living flesh and blood?"

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000250a04">
"Yes&."

{	Fw("fw���]_�ʏ�_think");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000260b02">
"Ha&, how interesting&. Now a machine wants to become human&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000270a04">
"&.&.&.&.&."

{	Fw("fw���]_�ʏ�_normal");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000280b02">
"My answer is no&. You should know that the most&. You're a
 machine&. You can't become human&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000290a04">
"&.&.&.Then why did you make me&, no&, make us like humans?"

{	Fw("fw���]_�ʏ�_smile");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000300b02">
"It's surprising to see a machine question his raison
 d'etre&. Indeed&, very interesting&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000310a04">
"Please answer me&."

{	Fw("fw���]_�ʏ�_think");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000320b02">
"It's simple&. You were made out of convenience&. You were
 made to follow mens' lives&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);}
{	Fw("fw���]_�ʏ�_normal2");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000330b02">
"You would blend into the human lifestyle&, and permanently
 manipulate them&. That is why you were made to resemble a
 human&."

{	Fw("fw���]_�ʏ�_normal");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000340b02">
"As development progresses&, your faces&, your stature&, your
 forms&, your lifespan&, will all be able to become varied&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000350a04">
"&.&.&.So you mean to say that we were made to ultimately
 resemble humans but still to be used as tools&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000360b02">
"I can't help it if you think that way&. I see all of you as my precious children&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0182]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000370b02">
"But there are countless replacements for you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���]_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0183]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000380b02">
"That's why in actuality&, I can say that you're all
 important beings to me&. I do need you all for my plan&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000390a04">
"&.&.&.&.&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000400a04">
"Then I have just one more question&. I want to ask my real
 master&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000410a04">
"Why do you think I'm alive right now&, Master?"

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/4000420a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
This is&.&.&. the same question he's asked me before&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",0,true);

	Fade("�G�w�i", 0, 0, null, true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000430b02">
"Why you're alive&, hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000440b02">
"Living is like a game to me&. People live on a magnificant
 board&, and bet on their fates&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000450b02">
"If my beliefs are right&, then no matter what trouble I run into&, my wishes will always be granted in the end&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000460b02">
"So even if I am discouraged&, it just means that I lost the wager on my fate&. However I will enjoy haggling with my
 life&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000470b02">
"That is what living is&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0231]

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000480a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
Clear doesn't say anything&.

But he balls his white gloved hands into fists&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_serious2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000490a04">
"&.&.&.Then to you&, Master&, what is death?"

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000500b02">
"Just as I had said earlier&, life is something you wager&.
 When peoples' convictions are refused by the world&, that
 is when they die&."

{	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_normal2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000510a04">
"&.&.&.You're wrong&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
Clear musters up his strength that shows in his voice and 
his shaking fists&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",0,true);

	Fade("�G�w�i", 0, 1000, null, true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000520a04">
"You're wrong&, completely wrong&. Those kind of answers mean nothing to me&. That's why I can't understand them&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000530a04">
"If life is just a game&, then what are we&.&.&.?"

{	Fw("fw���]_�ʏ�_smile");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000540b02">
"Spinning tops&. Including me&, naturally&. We are all tops
 spinning on a board&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_pinch");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000550a04">
"&.&.&.No! We're nothing like pawns! We&, just like humans&, all have wills and emotions&.&.&. We're living!"

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_angry");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000560a04">
"We&.&.&. we aren't toys for someone to just play with!"


{	Fw("fw���]_�ʏ�_normal");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000570b02">
"You just haven't realized it yet&. I'm the one who gave you life&, and you came here because you know that perfectly
 well&. Am I wrong?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_pinch");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0290]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000580a04">
"&.&.&.! As I thought&, you're not my master&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000590a04">
"I learned so many important things from being with
 Aoba-san&. Such important things&. What living is&.
 What death is&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000600a04">
"I'm not human&, but I still feel my chest warm up when
 Aoba-san speaks to me&. I can feel happy!"

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_angry");
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_normal2");
	FadeSt("C",200,true);
	FadeStPro("C", 9100, 200);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/4000610a04">
"You're not able to understand the me that isn't a human!
 And to want to control peoples' hearts&.&.&. You're full of
 arrogance&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/4000620a01">
"&.&.&.Clear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0300]
I never knew Clear held my words so close to his heart&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 2000, 0, null);
	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);
	Fade("�G�w�i", 0, 0, null, true);

	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//	FadeDelete("�G��", 1000, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0310]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000630b02">
"&.&.&.Hmm hm&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0320]
Toue makes an amused smile&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0330]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000640b02">
"You're in quite a rage&. Clear&, I find you truly
 interesting&. It was worth it to call you here instead of
 disposing of you right away&."

{	St("C",740, @0,@0,"st���]_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/4000650b02">
"I wonder what changed inside of you&.&.&. I should like to
 analyze it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4450_vs.nss"]

}
