//<continuation number="250">
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


scene dm4350.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4360.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=3;

}


scene dm4350.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	CreateSE("SE01","se����_�e���r_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Clear's song relaxed me&, so I was able to watch news about Toue on the TV without feeling anything&.

But everything shown on the TV was completely new to me&, 
I'd never seen or heard about any of it&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000010a01">
"There's so many channels&."

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000020a04">
"You're right&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("@dm*", 0, 0, null);
	SoundPlay("@dm020",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Right before I turn off the television&, I hear a strange 
noise&.

On the screen is a program advertising Platinum Jail&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G��", 50);
	SetShade("�G��", MEDIUM);


$HALevel=3;
	HAFade(2000, 0,false);

	Fade("�G��", 500, 1000, null, true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000030a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/l/bg302021_5_�O���b�^�[����_l.jpg");
	SetShade("�G�w�i", LIGHT);
	Move("�G�w�i", 0, 0, @0, null, true);
	Move("�G�w�i", 500, @0, @-50, Dxl1, false);
	Fade("�G�w�i", 500, 1000, Dxl1, true);
	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 300, 15, 15, 0, 0, 500, Dxl1, true);
	CreatePlainEX("�G��", 500);
	SetShade("�G��", MEDIUM);

	$���[�v���[�u�i�b�g�� = "@�G��";
	$���[�v���[�u�^�C�� = 40000;
	CreateProcessEX("�v���Z�X���}�C", "FlyMovingXXX");
	Request("�v���Z�X���}�C", Start);

	Fade("�G��", 500, 600, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
&.&.&.Suddenly&, my vision started to sway&.

Unable to control my body&, I grip onto the back of the 
sofa&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_serious2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000040a04">
"Master! Are you all right!? What's wrong!?"

{	Fw("fw���t_�ʏ�_pain");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000050a01">
"&.&.&.My head&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
//�����Ƀ��x���F�R
	HAFade(2000, 0,false);
	CreateColorEXsub("�G�F��", 6000, "00FFFF");
	CreateColorEXsub("�G�F��", 6000, "BLACK");
	Fade("�G�F��", 1000, 100, Axl3, false);
	Fade("�G�F��", 1000, 100, Axl3, true);
	CreatePlainEX"�G����", 200);
	SetShade("�G����", MEDIUM);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
My head hurts! It feels like it's tearing apart!

My vision blurs almost completely&, and soon enough I can't open my eyes anymore&. I feel sick&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000060a04">
"! This song&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se����_�e���r_�I�t");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@dm*", 0, 0, null);

	Wait(500);

	FadeDelete("�G�F��", 1500, null, false);
	Fade("�G��", 1500, 300, null, false);
	Fade("�G����", 1500, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Clear turns off the TV&, as if he's noticed something&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000070a04">
"Are you all right&, Master? Please rest for now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
//�����Ƀ��x���F�R
	Fade("�G�F��", 1000, 250, Axl3, false);
	Fade("�G�F��", 1000, 250, Axl3, false);
	HAFade(2000, 0,true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0105]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000080a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[���ԓV��.jpg");
	Rotate("�G�w�i", 0, @0, @180, 0, null, true);

	SetShade("�G�w�i", SEMIHEAVY);
	Delete("�v���Z�X*");
	Delete("�G��*");

	CreateTextureSP("�G�w�i10", 100, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[���ԓV��.jpg");
	Rotate("�G�w�i10", 0, @0, @180, 0, null, true);

//	OnBG(10,"bg302021_5_�O���b�^�[���ԓV��");
//	FadeBG(0,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 500, null, true);

	Wait(500);

	Fade("�G�F��", 1500, 100, null, false);
	Fade("�G�F��", 1500, 50, null, false);
	Fade("�G�w�i", 1500, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
I grind my teeth to the aching pain in my head&, and a cold sweat runs down my body&. Clear helps me lie down on the 
sofa&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�w�i", 1500, 700, null, false);
	Fade("�G�F��", 1000, 150, Axl3, false);
	Fade("�G�F��", 1000, 150, Axl3, false);

	HAFade(2000, 0,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0115]
The blood rushing to my head makes it feel like it's 
going to burst&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�w�i", 1000, 500, null, false);
	Fade("�G�F��", 1000, 100, null, false);
	Fade("�G�F��", 1000, 50, null, true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000090a01">
"Ow&.&.&."

{
	SoundPlay("@dm006",0,450,true);
	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious");
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000100a04">
"That song&.&.&. That was Grand Music&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000110a01">
"Grand&.&.&.?"

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000120a04">
"The sound sinks into the human brain and literally
 dyes it&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000130a01">
"What's all that about&.&.&."

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000140a04">
"Normal humans can't notice Grand Music&, and before they
 know it&, their brains are dyed&."

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000150a01">
"&.&.&.What do you mean by 'dyeing'?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000160a04">
"The sound has a will of its own and it will force people
 to submit&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000170a01">
"&.&.&.Toue's work?"

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000180a04">
"Yes&. However&, Master&, you have a special power&. It is like your body is rejecting the will of Grand Music&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
I can't believe something like that is coming from the TV&.&.

Toue must have many other traps that everyone is caught 
in&, the music can't be the only one&.

If no normal human can notice it&, they might as well all 
be Toue's puppets&.

But&.&.&.

I realize another thing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000190a01">
"&.&.&.Why do you know so much?"

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_sad");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000200a04">
"That's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
Clear hesitates to say anything else&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000210a04">
"&.&.&.Why do I? I'm not quite sure myself&. It just came out
 of my mouth&."

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_worry2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000220a04">
"Grandpa must have told me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
That makes me wonder what kind of person Clear's Grandpa 
was like&.&.&.

But I don't see any hint of dishonesty in Clear's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	HAFade(2000, 0,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
Without anything else&, I once again try to breathe and 
concentrate on ignoring my unstoppable headaches&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm43/5000230a01">
"&.&.&.Owowow&, shit&, it still hurts&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000240a04">
"The music utilizes your sense of hearing&, so the effects
 may still be wearing off&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0212]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm43/5000250a04">
"I'll do what I can to make you feel better quickly&,
 Master&. Close your eyes and please enjoy&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSP("�G��/�G�F��", 5000, "000000");
	DrawTransition("�G��/�G�F��", 1000, 0, 500, 600, null, "cg/data/slide_05_00_0.png", true);

	SoundPlay("@dm020b",0,250,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
I close my eyes as he says&, take a deep breath&, and relax 
my body&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
Then&, the faint sound of a song reaches my ears&.

Clear is singing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 6000, "WHITE");
	SetVolumeEX("@dm020b", 2000, 450, null);
	Fade("�G�F��", 2000, 1000, Dxl2, true);
	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
He comforts me as if I'm a baby&, with his calm and sweet 
melody&.

As I listen&, the pain gradually leaves my head&.

Soon I feel better&, and I fall into a dream-like state&.

Clear's voice is so beautiful&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(3000);

	Fade("�G�F��", 5000, 1000, Null, true);
	CreatePlainSP("�G��", 8000);
	Delete("�G�F��");
	Delete("�G�떇�G");

	DrawTransition("�G��/�G�F��", 0, 500, 1000, 300, null, "cg/data/slide_05_00_0.png", true);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0231]
As I drowsily think about him&, I putter into a small sleep&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
//���Ó]

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

	Wait(3000);

//�����t�@�C��["dm4360.nss"]

}
