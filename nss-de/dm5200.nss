//�����H�F���j�^�[//<continuation number="220">
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


scene dm5200.nss_MAIN
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
	#bg304021_5_���]�^���[�O�ʂ胂�u=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5210.nss";

}


scene dm5200.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301011_5_�v���`�i�W�F�C����ʂ�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, Center, -379, "cg/bg/l/bg301011_5_�v���`�i�W�F�C����ʂ�_l.jpg");

	SoundPlay("@dm001",0,450,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I head out of Glitter with Main Street in mind&.

It's bizzare how feverish the streets are: the parade 
with a band&, people in costume&, dancers waving around 
while marching along&.

The dancers would slip into the crowds and dance around&, 
making the crowd even larger&. It was even more gaudy than 
the display I saw on TV&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE10","se��_�K��_�����01L");
	MusicStart("SE10",3000,700,0,1000,null,true);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�G�w�i100");

	OnBG(10,"bg304021_5_���]�^���[�O�ʂ胂�u");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i101", 101, -506, -205, "cg/bg/l/bg304021_5_���]�^���[�O�ʂ胂�u_l.jpg");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	Move("�G�w�i101", 2000, -506, -538, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I slowly made my way to the tower through the throngs of 
people&.

People were overflowing&, pushing each other around in the 
plaza in front of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/0000010a01">
"Well&, fuck&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ǂ���ƌ�납��Ԃ�����

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se�l��_����_�ߎC��25");
	MusicStart("SE03",0,600,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/0000020a01">
"Whoa!"

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�a�z
<voice name="�j���q�a" class="�j���q�a" src="voice/dm52/0000030e23">
"Cheers to Platinum Jail!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se�l��_����_�ߎC��26");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateSE("SE03","se�l��_����_�ߎC��01");
	MusicStart("SE03",0,500,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Some guy I don't know crashes into me from behind and 
hugs me all of a sudden&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/0000040a01">
"Let go&.&.&.!"

{
	Fw("fwm���C_�ʏ�_normal");
}
//�y�j���q�a�z
<voice name="�j���q�a" class="�j���q�a" src="voice/dm52/0000050e23">
"Uhaha&, Toue-san's the best!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,600,0,1200,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 5, 0, 0, 0, 500, null, true);
	Delete("�G��");

	FadeDelete("�G�w�i101", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I push him off and get away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/0000060a01">
"What the hell&, a bunch of drunks?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
And right after I thought that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�����q�a�z
<voice name="�����q�a" class="�����q�a" src="voice/dm52/0000070e25">
"Toue-san&, you're amazing!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/0000080a01">
"W-Wait!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreateTextureEX("�G�w�i102", 102, -233, -517, "cg/bg/l/bg304021_5_���]�^���[�O�ʂ胂�u_l.jpg");
	Move("�G�w�i102", 500, -54, -517, Dxl1, false);
	Fade("�G�w�i102", 500, 1000, null, true); 

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
This time a girl grabs onto me&, pushing me outside of the 
crowd of people&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(500,300,20,2,0,0,1000,null,false);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/0000090a01">
"Ouch&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
It's no use&. I'll be completely pushed away by the crowd 
if I stand here&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
But&.&.&. As I hold on desperately&, all the people around me 
are smiling&.

It's really creepy&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE10", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	Move("�G�w�i102", 500, @-100, @0, Dxl1, false);
	FadeDelete("�G�w�i102", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
As I stand there alone and in a panic&, the public 
advertisements on the large monitors around me turn into 
something like a sandstorm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se��_�K��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se��_�K��_����03");
	MusicStart("SE02",3000,700,0,1000,null,true);

	CreateTextureEX("�G�w�i103", 103, -506, -205, "cg/bg/l/bg304021_5_���]�^���[�O�ʂ胂�u_l.jpg");
	Move("�G�w�i103", 1000, -506, -538, Dxl1, false);
	Fade("�G�w�i103", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
The monitor quickly changes pictures&, and roars echo 
throughout the plaza&.

&.&.&.It's 1PM&.

It's going to begin soon&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����H�F�僂�j�^�[
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���A�i�E���T�[�z
<voice name="���A�i�E���T�[" class="���A�i�E���T�[" src="voice/dm52/0000100e07">
"And so&, everyone&, we have left you waiting&. The
 representative&, the great Toue&, will now be administering
 his greetings&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se��_�K��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 3000, 400, null);

	FadeDelete("�G�w�i103", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
The cheers of joy and clapping grow to the point where it 
pounds my ears&. Someone comes onto the tower balcony&.

The monitors focus&.

In the middle is Toue&. And there is a single guard on each side of him&, as well as another person slightly behind him&.

His head is facing downwards&, so it's hard to see his face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE02", 3000, 0, null);

	CreatePlainSP("�G��", 5000);

	CreateTextureSPadd("�G���o", 2000, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	Fade("�G���o", 0, 300, null, true);

	CreateTextureSP("�G�d�u500", 500, Center, Middle, "cg/ev/ev520���]����.jpg");

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000110b02">
"&.&.&.Everyone&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
With one word from Toue into his mic&, the entire crowd 
went unbelievably quiet&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Everyone's face is plastered with anticipation for Toue's 
next words&.

He takes a moment and calmly looks down to the people in 
the plaza with a small grin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

	CreateTextureEX("�G�d�u501", 501, -150, -50, "cg/ev/l/ev520���]����_l.jpg");
	Fade("�G�d�u501", 500, 1000, null, true);
	Move("�G�d�u501", 10000, -415, -50, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000120b02">
"On this occassion&, I would like to thank you all for
 coming to this Special Commemoration Event&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000130b02">
"I would like to celebrate this day&, the 10th anniversary
 of the opening of Platinum Jail&. It certainly has been a
 while&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000140b02">
"Yes&. Time will not stop for us&. And for this reason&, I
 believe that everyone should spend their limited time here
 as happy as they can be&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000150b02">
"But what is happiness? I've always wondered&. Happiness is
 not something so easily obtained&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000160b02">
"But I also believe that anyone can seize it&." 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u501", 500, @0, @-100, Dxl1, false);
	FadeDelete("�G�d�u501", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000170b02">
"No matter the setting&, people can find a way to be able to
 laugh from the bottom of their hearts&, find delight&, and
 obtain a sense of tranquility&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000180b02">
"And if everyone were to be able to achieve this&, there
 would be no need for fighting&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000190b02">
"Anger and sadness are the fruits of adulthood&. That
 argument is plausible&. However&, everyone suffers from
 the two throughout their daily lives&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000200b02">
"I would want them to forget their ordinary lives and live
 happily within the moment&."

//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000210b02">
"And I would also want this place to become their second
 home&. I'm always wishing for that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�����H�F�僂�j�^�[
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/0000220b02">
"Always wishing for happiness to trickle down from person
 to person&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Toue puts his hand on his chest and quietly tilts his head downwards&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se��_�K��_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SE02","se��_�K��_����03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 8000, 0, null);

	CreatePlainSP("�G��", 5000);

	Delete("�G�d�u*");
	Delete("�G���o");

	FadeDelete("�G��", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
After a moment of silence&, a thunderous voice came down&.

Everyone raises their hands into the air as it rings&, the 
sound of Toue's voice moving through their fingers&.

I clapped along to keep with the crowd&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
But&.&.&. this wild event is like a meeting for a cult with 
devout believers&.

Toue looked at his praising followers with satisfaction&, 
and opened his mouth once again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5210.nss"]

}
