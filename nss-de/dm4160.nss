//<continuation number="340">
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


scene dm4160.nss_MAIN
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
	$GameName = "dm4170.nss";

}


scene dm4160.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm003",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000010a01">
"Hey&, wait!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000020a04">
"Hello&, excuse me for a minuteee!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301041_5_�v���`�i�W�F�C���ʂ�H�n02");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I see a person by an entrance&, and get upset once again&.

That's&.&.&.

{	SetVolumeEX("@dm*", 2000, 0, null);}
There are scars all over that sketchy guy!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000030a01">
"Wait&, Clear!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000040a04">
"Excuse meeee! There's something I'd like to ask youuuuu!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm41/6000050e42">
"Huh?!"

{	Fw("fwm�`���s��B_�ʏ�_normal");}
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm41/6000060e43">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The group of hoodlums react to Clear's yelling&.
Oh shit! I need to stop him&.&.&.!

I'm in a panic as Clear walks up close to the gang of 
hoodlums&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000070a04">
"Do you have any idea of how someone would get into the
 tower?"

{	Fw("fwm�`���s��A_�ʏ�_normal");}
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm41/6000080e42">
"Tower? Hey&, you might want to show some damn manners when
 you ask someone a question&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

//	ClearComicNext(21000,461,-4,14);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�N���A�z�������F�N�G�X�`����
<voice name="�N���A" class="�N���A" src="voice/dm41/6000090a04">
"Manners? As in an introduction?"

{	Fw("fwm�`���s��B_�ʏ�_normal");}
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm41/6000100e43">
"Are you fucking around? Hand me some cash if you have
 some&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000110a04">
"Money? I don't hand money over to people I've just met and don't even know their names&."

{	Fw("fwm�`���s��B_�ʏ�_normal");}
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm41/6000120e43">
"Whaaa?"

{	Fw("fwm�`���s��A_�ʏ�_normal");}
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm41/6000130e42">
"Don't give me any fuckin' lip!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//	ClearComicNexDelete();

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000140a01">
"Stupid&.&.&.! Clear!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i5000", 5000, -243, -572, "cg/bg/l/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02_l.jpg");
	Move("�G�w�i5000", 300, @-100, @50, Dxl1, false);
	Fade("�G�w�i5000", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
A vein pops out of one of the hoodlum's forehead&, and he 
suddenly raises one of his arms up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000150a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
He's going to hit him&.&.&.!

&.&.&.At least&, I thought he would&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	FadeSt("C",0,true);

	Move("�G�w�i5000", 300, @-100, @50, Dxl1, false);
	FadeDelete("�G�w�i5000", 300, null, true);

	Shake("@StNameC/C*", 2300, 1, 1, 0, 0, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000160a04">
"You mustn't use violeeennnnceee!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");

	Fade("�G�F��", 0, 1000, Axl3, true);
	DrawTransition("�G�F��", 150, 0, 1000, 100, Dxl1, "cg/data/circle_01_00_0.png", true);

	Wait(50);
	DeleteSt("C", 0,true);

	FadeDelete("�G�F��", 100, Dxl2, true);

	CreateSE("SE01","se�[��_�Ō�_�M���O�q�b�g01");
	MusicStart("SE01",0,800,0,1000,null,false);

	Wait(300);

	Fw("fwm�`���s��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm41/6000170e43">
"Ugh!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000180a01">
"Eh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
Clear puts up both of his hands and they buzz around&, 
hitting the man's face until he falls down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm41/6000190e42">
"Motherfucker&, what are you doin'!?"

{	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000200a04">
"You musn't resort to violence!"

{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000210a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm41/6000220c05">
"Hey&, what're you doin'?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
A voice comes from behind the hoodlums&, and a neurotic 
looking man with glasses on walks towards us&, swaying&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm41/6000230e42">
"This guy just&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
The glasses man looks to Clear&, glances at the fallen 
hoodlum&, and then back to us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm41/6000240c05">
"Which one of you did this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm41/6000250e42">
"The gas mask guy did&."

{	Fw("fwm�C�i�__�ʏ�_normal");}
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm41/6000260c05">
"Oh&, I see&. This boy here is one of mine&. You're causing
 me trouble by hurting him&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000270a04">
"He was the one who swung at me first&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm41/6000280c05">
"&.&.&.&.&."

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1200,null,false);

	DeleteFw();
	DeleteSt("C", 200,true);

//	SetVolumeEX("SE*", 500, 0, null);

	FwPro("fw���t_�ʏ�_rage",2700,"fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000290a01">
"Clear&, don't say anything&. Excuse us&, we made a mistake&.
 We're truly sorry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
I hold onto Clear's arm&, and bow our heads to the yakuza&.

But&, I guess you could say&.&.&.&. it actually was a mistake&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm41/6000300c05">
"It'd be nice to end it with an apology&, it really would&,
 but I can't just leave it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateTextureEX("�G�w�i100", 100, -501, -463, "cg/bg/l/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02_l.jpg");
	Move("�G�w�i100", 300, -752, -463, Dxl3, false);
	Fade("�G�w�i100", 300, 1000, null, true);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se�l��_����_�͂�01");
	MusicStart("SE03",0,500,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 10, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0241]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000310a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
The man with the glasses walks briskly towards us and 
suddenly throws me to the ground&. I stumble over and he 
goes after Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/6000320a04">
"Master! Are you alright!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/6000330a01">
"Yeah&, I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0271]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm41/6000340c05">
"Master? Are you some sorta bar keeper? Aren't you both a
 little too into it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4170.nss"]

}
