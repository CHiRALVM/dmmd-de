//<continuation number="150">
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


scene dm5290.nss_MAIN
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

	#bg304141_5_���]�^���[�p�[�e�B�z�[��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5300.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=3;

}


scene dm5290.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��24");
	MusicStart("SE02",0,700,0,900,null,false);

	CreateTextureEX("�G�w�i100", 100, -95, -547, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");
	Fade("�G�w�i100", 500, 1000, null, true);

	Shake("�G�w�i100", 200, 0, 7, 0, 0, 500, null, true);

	SetVolumeEX("SE01", 500, 0, null);
	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,600,0,900,null,false);
}
Right as the doors opens&, Ren violently scrambles his way 
out of my arms&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/9000010a01">
"Hey&, Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//���@_�����čs���Ă��܂�
	CreateSE("SE01","se����_����_����@01L");
	MusicStart("SE01",0,700,0,1300,null,true);

	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Ren disappeared through the gap only seconds after the 
doors had opened&.

What&.&.&.!?
What's going on with him&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg304141_5_���]�^���[�p�[�e�B�z�[��");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, 270, -353, "cg/bg/l/bg304032_5_���]�^���[�L��02_l.jpg");
	Rotate("�G�w�i100", 0, @0, @180, 0, null, true);
	Zoom("�G�w�i100", 0, 1300, 1300, null, true);
	Request("�G�w�i100", Smoothing);

	DrawDelete("�G����", 250, 100, Dxl1, "slide_01_01_1", true);

	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,500,0,1400,null,false);

	BGPlainShake(500,300,5,5,0,0,1000,Dxl1,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
When I get out of the elevator to go after Ren&, I run 
right into a woman and quickly apologize to her&.

I realize that she's dressed up quite nicely and 
come to the conclusion that a party must be taking place&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i110", 110, -1024, -576, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	Delete("�G�w�i100");

	CreateSE("SE01","se����_����_����@01L");
	MusicStart("SE01",0,700,0,1300,null,true);
	SetVolumeEX("SE*", 3000, 0, null);

	CreateSE("SEL01","se�[��_���__�����g01L");
	MusicStart("SEL01",3000,200,0,600,null,true);

	Move("�G�w�i110", 1000, @200, @0, DxlAuto, false);
	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The blue silouettes by the door were of people quickly 
making their way into a hall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i110", 500, null, true);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/9000020a01">
"Ren&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I knew I looked terribly out of place&, but I bolted into 
the hall to go after Ren&.

Inside are many fancy-looking people&, holding glasses and 
plates while making small talk&. 

Everyone around took a quick glance at me&, but went right 
back to talking to one another&.

I bet they just don't want to get into any trouble&.
And just pretend they never saw anything&.

But the noise in the hall grows even louder&.
If they call security&, I'm screwed&.

I just keep looking for Ren without stopping for a second&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 6000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�G�w�i111", 111, 0, Middle, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	Move("�G�w�i111", 0, @0, @-50, null, true);
	DrawTransition("�G����", 300, 1000, 0, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	Wait(300);

	SetVolumeEX("SEL01", 1000, 400, null);

	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);
	CreateTextureSP("�G�w�i112", 112, 0, -400, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	Rotate("�G�w�i112", 0, @0, @180, @0, null,true);
	DrawTransition("�G����", 300, 1000, 0, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Wait(300);

	SetVolumeEX("SEL01", 1000, 500, null);

	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Where the hell did he go?
If I don't find him soon&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SEL01", 2000, 1500, null);

//�����o�F������Ɣ��t�̉e���o�����_��قǉ��o����
	CreateCamera("�b", 0, 200, 1000);
	SetAlias("�b","�b");

	CreateTextureEX("�G�w�i", 3000, Center, Middle, "cg/bg/bg304141_5_���]�^���[�p�[�e�B�z�[��.jpg");
	CreateTextureSP("�b/�G�w�i", 11, Center, Middle, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	CreateTextureSP("�b/�G�w�i��", 10, Center, Middle, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	CreateTextureSP("�b/�G�����G", 510, 680, 145, "cg/st/m/st�����t_�ʏ�_normal_m.png");
	CreateTextureSP("�b/�G�����G��", 511, 680, 145, "cg/st/m/st�����t_�ʏ�_normal_m.png");
	SetShade("�b/�G�����G��", MEDIUM);
	SetShade("�b/�G�w�i��", MEDIUM);
	Request("�b/�G�����G", Smoothing);
	Request("�b/�G�w�i", Smoothing);

	DrawDelete("�G����", 300, 100, Dxl1, "slide_01_01_1", true);

	Wait(500);

	SetVolumeEX("SEL01", 150, 0, null);
	MoveCamera("�b", 2000, 200, @0, @0, Dxl2, true);
	WaitAction("�b", null);

	Wait(500);

	Fade("�b/�G�����G��", 500, 0, null, false);
	Fade("�b/�G�w�i", 500, 0, null, true);

	Wait(800);

	Fade("�b/�G�����G��", 500, 1000, null, false);
	Fade("�b/�G�w�i", 500, 1000, null, false);
	MoveCamera("�b", 1000, -50, @0, @0, DxlAuto, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.Huh?

Just now&, that&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("�G�w�i1*");

	MoveCamera("�b", 800, 450, @0, @0, Dxl3, false);
	Fade("�G�w�i", 1000, 1000, null, true);
	Delete("�b/�G*");
	Delete("�b");
	Delete("�G�w�i");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
My eyes follow the back of a person in the crowd&.

Is that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
&.&.&.Me?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);


	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

$HALevel=3;
//��������Ɠ��������ɂ�
	HAFade(4000, 0,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 500, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/9000030a01">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, Center, Middle, "cg/bg/m/bg304141_5_���]�^���[�p�[�e�B�z�[��_m.jpg");
	CreateTextureEX("�G�w�i101", 101, Center, Middle, "cg/bg/m/bg304141_5_���]�^���[�p�[�e�B�z�[��_m.jpg");
	CreateTextureEX("�G�w�i102", 102, Center, Middle, "cg/bg/m/bg304141_5_���]�^���[�p�[�e�B�z�[��_m.jpg");
	CreateTextureEX("�G�w�i103", 103, Center, Middle, "cg/bg/m/bg304141_5_���]�^���[�p�[�e�B�z�[��_m.jpg");

	SetShade("�G�w�i100", MEDIUM);

	MoveFTP1("@�G�w�i100",35000,10,5);
	MoveFTP2("@�G�w�i102",30000,20,15);
	MoveFTP3("@�G�w�i103",25000,3,4);
	MoveFTP4("@�G�w�i104",35000,2,10);

	Fade("�G�w�i1*", 10000, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
A violent headache suddenly comes over me&, and my world 
starts to shake&.

{
	CreateSE("SE01","se�l��_�S��_�ۓ�02L");
	MusicStart("SE01",8000,700,0,1000,null,true);
}
My vision blurs with the numerous after-images that 
flash under my eyelids&.

Noises repeat over and over like a broken record inside of my ears&, and soon all sound fades out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	HAFade(6000, 3,true);
	HAFade(6000, 3,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
My head pounded along to my heart&.

What&.&.&.?

My legs are strangely heavy&. They won't move&.

What's&.&.&. happening&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000040b01">
"Is he that precious?"

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/9000050a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Suddenly&, a voice reaches my ears&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000060b01">
"He is&, isn't he? I would know&, of course&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000070b01">
"Then&, have you ever thought about why he is so precious to you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/9000080a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
Who is he&.&.&.
I don't see him&, but I can hear him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	HAFade(6000, 3,true);
	HAFade(6000, 3,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
The pounding in my head&.&.&. It keeps getting worse&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000090b01">
"You really do know&, don't you? After all&, you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/9000100a01">
"&.&.&.Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000110b01">
"But you've already decided&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000120b01">
"You should just keep pressing on like that&. As much as you desire&, until you're satisfied&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000130b01">
"No one can stop you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm52/9000140b01">
"No one can stop the real you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/9000150a01">
"Shut up!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 990);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se�l��_����_�ߎC��01");
	MusicStart("SE03",0,700,0,900,null,false);

	Delete("�G�w�i*");
	MoveFTP1stop();

	CreateTextureEXover("�G�w�i101", 101, -512, 0, "cg/ev/m/evf07�v���`�i�W�F�C���Ί�_m.jpg");
	CreateTextureEX("�G�w�i100", 100, 0, 0, "cg/ev/m/evf07�v���`�i�W�F�C���Ί�_m.jpg");
	Fade("�G�w�i101", 0, 1000, null, true);
	Fade("�G�w�i100", 0, 1000, null, true);
	Move("�G�w�i101", 200, -256, 0, Dxl1, false);
	Move("�G�w�i100", 200, -256, 0, Dxl1, false);
	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
I scream to try to erase the voice&, and the guests in the 
hall look at me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE10","se��_�K��_�����01L");
	MusicStart("SE10",3000,700,0,2500,null,true);

	CreateTextureEXsub("�G�w�i102", 102, Center, Middle, "cg/ev/m/evf07�v���`�i�W�F�C���Ί�_m.jpg");
	DrawEffect("�G�w�i102", 60000, "MiddleWave", 0, 1000, null);
	DrawEffect("�G�w�i101", 60000, "MiddleWave", 0, 1000, null);
	DrawEffect("�G�w�i100", 60000, "MiddleWave", 0, 1000, null);
	Fade("�G�w�i102", 5000, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
&.&.&.He's smiling&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
His warped face&, looking right at me&.&.&.
It's smiling&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(800);

//���Ԃ�Ɩ����̐��E���I���

	SetVolumeEX("@dm*", 100, 0, null);
	SetVolumeEX("SE*", 100, 0, null);

	CreateColorEXadd("�G�F��", 25000, "ffffff");

	FadeDelete("�G�F��", 300, null, true);

//�����t�@�C��["dm5300.nss"]

}
