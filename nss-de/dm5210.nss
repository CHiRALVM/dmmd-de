//<continuation number="140">
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


scene dm5210.nss_MAIN
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
	#ev520���]����=true;
	#ev520���]����a=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5220.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=3;

}


scene dm5210.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm019",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSPadd("�G���o", 5000, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	Fade("�G���o", 0, 300, null, true);

	OnBG(10,"bg304021_5_���]�^���[�O�ʂ胂�u");
	FadeBG(0,true);

	CreateTextureSP("�G�d�u100", 100, -150, -10, "cg/ev/m/ev520���]����_m.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	FadeDelete("��w�i", 500, null, true);
}
//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/1000010b02">
"This event will be open for two days&. The main event is
 tomorrow&. Today is the eve of that&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/1000020b02">
"Before tomorrow comes&, I would like to display a new 'Joy' for everyone here&.&.&. Now&, here&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Toue calls up the person behind him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev520���]����a.jpg");
	Fade("�G�d�u101", 1000, 1000, null, true);
	Delete("�G�d�u100");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/1000030b02">
"His name is Sei&. He is like a son to me&. I wouldn't be the man I am today if not for him&. He is most precious to me&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/1000040b02">
"I would like to introduce him to you all for this
 special event&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/1000050b02">
"He is both my pride and joy&. He is the messenger that will bring happiness to peoples' hearts&. I would greatly
 appreciate it if you could give him your blessings&." 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The crowd goes crazy&, yelling out to the young youth&, Sei&, with inquisitive gazes&.

Sei raises his head&, it now being displayed on the giant 
monitors&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u102", 102, -883, -174, "cg/ev/l/ev520���]����a_l.jpg");
	Move("�G�d�u102", 1000, -1024, -224, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);
	Delete("�G�d�u101");

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 8000, -384, -357, "cg/ev/l/ev515�������܂�Z�Ca_l.jpg");

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);

//	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/1000060a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
That's&.&.&.!

Isn't he the person I ran into&, the one sitting in the 
alley&, while I was looking for Ren&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���т���Ɠd��������
//�e�F�Z�C�̗�
	Sei(2000,1500,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/1000070a01">
"&.&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
&.&.&.That again&.

The same as when I met his eyes in the alley&.&.&.
The sensation of electricity going through me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
But this time it's different&.

His face on the monitor&.&.&.
I couldn't take my gaze off of it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u1504", 1504, -1642, -98, "cg/ev/l/ev520���]����a_l.jpg");
	Request("�G�d�u1504", Smoothing);
	SetShade("�G�d�u1504", LIGHT);

	CreateTextureEX("�G�d�u1503", 1503, -1642, -98, "cg/ev/l/ev520���]����a_l.jpg");
	Request("�G�d�u1503", Smoothing);
	Zoom("�G�d�u1503", 0, 2000, 2000, null, true);
	Zoom("�G�d�u1504", 0, 2000, 2000, null, true);

	Fade("�G�d�u1503", 5000, 1000, null, false);
	Fade("�G�d�u1504", 10000, 500, null, false);
	MoveFTP3("@�G�d�u1504",15000,15,10);

	CreateSE("SE01","se�l��_�S��_�ۓ�02L");
	MusicStart("SE01",10000,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The look in his eyes&.&.&. flickered in my head countless 
times&.

Like he was all the way inside of me&.&.&.
Flickering over and over&.

His clear eyes are looking right at me&.

Going deep&, deep inside of me&.&.&.

Inside&.&.&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("�G��", 5000);

	Delete("�G���o*");
	Delete("�G�d�u*");

	FadeDelete("�G��", 200, null, true);

$HALevel=3;
	HAFade(2000, 0,false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/1000080a01">
"Ow&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Suddenly&, I feel a strong headache coming on&, the feeling 
similar to when I woke up from my earlier dream&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/1000090a01">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
My head is pounding&.

What's going on&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�`���s��C_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�j���q�a�z
<voice name="�j���q�a" class="�j���q�a" src="voice/dm52/1000100e23">
"Ahh&.&.&. Sei&, you're so amazing&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�����q�a�z
<voice name="�����q�a" class="�����q�a" src="voice/dm52/1000110e25">
"Sei-sama&.&.&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/1000120a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
The people who were only minutes ago cheering for Toue are now staring in awe at Sei's face&, as if possessed&.

Sei's eyes slowly twinkle on the screen&.

What&.&.&.?

What's going on&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/1000130b02">
"Thank you&. I'm very grateful for all of your blessings&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/1000140b02">
"I believe that this entire island&, not only Platinum Jail&, will be able to enjoy tomorrow's main event&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5220.nss"]

}
