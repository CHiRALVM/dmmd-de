//<continuation number="490">
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


scene dm5280.nss_MAIN
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
	#ev004���@�N��b=true;
	
	#bg304031_5_���]�^���[�L��01=true;
	#bg304032_5_���]�^���[�L��02=true;
	#bg304033_5_���]�^���[�L��03=true;
	#bg304072_5_���]�^���[�G���x�[�^�[=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5290.nss";

}


scene dm5280.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm018",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg304031_5_���]�^���[�L��01");
	FadeBG(0,true);

	Delete("��w�i");;

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I go through a door and a long hallway opens up before me&.

So this is the inside of Oval Tower&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304033_5_���]�^���[�L��03");
	FadeBG(0,true);

	SetVolumeEX("SE*", 500, 0, null);
	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I've heard that there were areas of the tower that normal 
people could enter&, but nobody's here&, probably because 
we're around the back entrance&.

But a little ways off&, I can hear the sound of footsteps&, 
most likely some patrolling guards&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304032_5_���]�^���[�L��02");
	FadeBG(0,true);

	SetVolumeEX("SE*", 500, 0, null);
	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I walk around&, staying very wary of the unfamiliar 
environment&, and come across an elevator&. There are two 
security guards standing in front of it&.

{
	CreateTextureEX("�G�w�i100", 100, -300, -288, "cg/bg/l/bg304032_5_���]�^���[�L��02_l.jpg");
	Move("�G�w�i100", 500, @50, @0, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);
}
I immediately turn into another hall&, analyzing the 
situation from a corner&.

It doesn't look like there's anything to hide behind by 
the elevator&.

I guess I can't do a suprise attack like I could earlier 
by the gate&.

What do I do&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��C_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�����H�F�^���[��_����
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm52/8000020e18">
"Hey&, what are you doing over there?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000030a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_0.png", true);

	Delete("�G�w�i*");
	OnBG(10,"bg304033_5_���]�^���[�L��03");
	FadeBG(0,true);

	DrawDelete("�G����", 250, 100, Dxl2, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I turn around to find a guard standing there in the 
hallway&.

{
	SoundPlay("@dm009",0,450,true);
}
Fuck&.&.&.! 
He must've come out from one of the rooms in the hallway&.

One of the guards by the elevator must've heard the 
other's voice&, and the hallways fill with noise&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000040a01">
"Fuck&.&.&.!"

{	Fw("fwm�x��C_�ʏ�_normal");}
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm52/8000050e18">
"Don't move!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("�G�w�i102", 102, -250, -288, "cg/bg/l/bg304032_5_���]�^���[�L��02_l.jpg");

	DrawDelete("�G����", 250, 100, Dxl2, "slide_01_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
At that moment&, an elegant looking man and woman come out 
from the open elevator doors&. Guests?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
When the man notices the guard&, he comes to a stop&, 
looking a little puzzled&.

&.&.&.Now!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G�w�i", 300, 5, 5, 0, 0, 500, Dxl3, false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl2, "cg/data/zoom_01_00_1.png", true);

	CreateTextureSP("�G�w�i103", 103, -510, -244, "cg/bg/m/bg304031_5_���]�^���[�L��01_m.jpg");
	Delete("�G�w�i102");

	DrawDelete("�G����", 250, 100, Dxl2, "zoom_01_00_0", true);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000060a01">
"&.&.&.!"

{	Fw("fwm�x��C_�ʏ�_normal");}
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm52/8000070e18">
"Hey&, wait!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	Shake("�G�w�i103", 300, 5, 5, 0, 0, 500, Dxl3, false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, Dxl2, "cg/data/zoom_01_00_1.png", true);

	CreateTextureSP("�G�w�i104", 104, -1022, -514, "cg/bg/l/bg304031_5_���]�^���[�L��01_l.jpg");
	Delete("�G�w�i103");

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("�G����", 150, 100, Dxl2, "zoom_01_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I dashed out from the hallway corner&, aiming for the 
elevator&.

The flustered guards ran right at me while the frightened 
couple ran away&. 

Without slowing down&, I just barely&.&.&.

&.&.&.Slid through the gap between the closing elevator 
doors&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���^���[_�G���x�[�^�[�Ɋ��荞��
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, Dxl2, "cg/data/zoom_01_00_1.png", true);

	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i105", 105, -151, -547, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");
	Move("�G�w�i105", 250, -95, -547, Axl1, false);
	Delete("�G�w�i104");

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(100);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,700,0,1000,null,false);

	DrawDelete("�G����", 150, 100, Dxl2, "zoom_01_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm52/8000080e16">
"Wait!"

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000090a01">
"Get away&, damn it!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//���R��
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm52/8000100e16">
"Guh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm009", 3000, 1, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I kicked away the guard that tried to slide in with me and pulled back my leg before it almost got stuck in the door&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�w�i105", 500, Dxl1, true);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000110a01">
"Whew&.&.&. Barely made it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//��������I�ƃG���x�[�^�[�̃h�A�������J���悤�Ƃ���
	CreateSE("SE01","se����_�h�A���]����_���J���������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("�G�w�i106", 106, -95, -547, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");
	Fade("�G�w�i106", 200, 1000, null, true);

	Shake("�G�w�i106", 200, 10, 0, 0, 0, 500, null, true);

	Wait(1000);

	CreateSE("SE01","se����_�h�A���]����_���J���������01");
	MusicStart("SE01",0,1000,0,900,null,false);

	SetVolumeEX("@dm009", 3000, 450, null);

	Shake("�G�w�i106", 200, 30, 0, 0, 0, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Before the doors can completely close&, one guard sticks 
his hand in&, trying to pry them apart&.

Oh shit&.&.&.!

I take out the stun gun in my bag and stick it on his hand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���o�`���I�ƃX�^���K���̉�
/*
	CreateTextureEXadd("�G�d��", 500, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	CreateTextureEXadd("�G�d����", 501, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("�G�d����", 0, 1300, 1300, null, true);
	Rotate("�G�d����", 0, @0, @180, @0, null,true);

	CreateSE("SE01","se�퓬_�X�^���K��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(50,300,10,10,0,0,1000,Dxl1,false);
	Zoom("�G�d��", 150, 2500, 2500, Dxl3, false);
	Fade("�G�d��", 100, 1000, Dxl1, true);
	Wait(50);
	Fade("�G�d����", 0, 1000, Dxl1, true);
	Wait(50);
	Zoom("�G�d��*", 200, 1000, 1000, Dxl2, false);
	FadeDelete("�G�d��*", 100, Dxl1, true);
*/

	CreateSE("SE01","se�퓬_�X�^���K��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 3000);
	Shake("�G��", 300, 0, 10, 0, 0, 500, Axl1, true);
	Delete("�G��");

	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm52/8000120e17">
"Uwah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
The guard's hand snaps back&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000130a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se����_����_����@01");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 100, 0, null);

	Wait(200);

	CreateTextureEX("�G�w�i107", 15007, Center, Middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");

	Move("�G�w�i107", 200, @0, @-50, Dxl1, false);
	Fade("�G�w�i107", 200, 1000, null, true);

//���G���x�[�^�[�{�^������
	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
Ren jumps out of my bag and then pushes a button on the 
panel with a paw&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���G���x�[�^�[����
	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Before the guards can do anything&, the door quietly shuts&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



	CreateTextureSP("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");

	CreateTextureSP("bg_el", 10, -580, 165, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[.jpg");
	Request("bg_el", Smoothing);
	Rotate("bg_el", 0, @0, 180, @0, null,true);
	Zoom("bg_el", 0, 2500, 2500, null, true);

//	CreateTextureSP("chara01", 11, -300, middle, "cg/fu/fu���t_�ʏ�_serious.png");
//	Request("chara01", Smoothing);
//	Rotate("chara01", 0, @0, 180, @0, null,true);
//	Zoom("chara01", 0, 1500, 1500, null, true);
//	Move("chara01", 0, @300, @0, null, true);

	CreateTextureSP("ElevatorPaul", 500, Center, -600, "cg/bg/x/bg304072_5_���]�^���[�G���x�[�^�[_�O��|�[��.png");
	Request("ElevatorPaul", Smoothing);
	Zoom("ElevatorPaul", 0, 6000, 6000, null, true);

	CreateTextureSP("bg_scrool", 100, 0, -4700, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[_�O��a.jpg");
	Fade("ElevatorPaul", 0, 500, null, true);
	Fade("bg_scrool", 0, 700, null, true);

	ElevatorPole();
	ElevatorMove();

	Fade("bg_scrool", 700000, 300, null, false);
	Move("bg_scrool", 700000, @0, 0, Dxl1, false);


	FadeDelete("�G�w�i*", 500, null, true);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000140a01">
"&.&.&.That was close&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�G���x�[�^�[�z
<voice name="�G���x�[�^�[" class="�G���x�[�^�[" src="voice/dm52/8000150e41">
"Please press the button to your selected floor&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000160a01">
"Oh&, I get it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@dm*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
Calmed down by the sound of the elevator announcer&, I stood
up and pressed the button to the floor I wanted to go to&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//���G���x�[�^�[�㏸
	Wait(1000);

	CreateSE("SE11","se����_�G���x�[�^_�쓮01L");
	CreateSE("SE11a","se����_�h�A�S_���J������01");
	MusicStart("SE11",200,700,0,200,null,true);
	MusicStart("SE11a",0,500,0,500,null,false);
	SetFrequency("SE11", 4000, 1000, null);

//	Shake("bg_el2", 10, 1, 0, 0, 0, 1000, null, false);

	Wait(3000);
//	Move("bg_el2", 3000, @170, @0, AxlDxl, 2000);

	FadeDelete("bg_el2", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063a]
The elevator lightly shook and started to ascend&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000170a01">
"Ha&.&.&. ouch&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,600,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I must've hurt my shoulder when I slid on the floor to get in here&.

Patting where it hurt&, I leaned over to Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cheese2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000180a01">
"Nice one&, Ren&, as usual&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000190a06">
"Don't act like I'm heartless&, even though I don't exactly
 have a heart&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000200a01">
"But that just did the trick&. It's all thanks to you&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000210a06">
"Don't be reckless&."

{	Fw("fw���t_�ʏ�_fake");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000220a01">
"I wonder if we can stick to the ceiling like in the
 movies&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000230a06">
"We'd have to come up with a plan to make that a
 possibility&."

{	FwPro("fw���t_�ʏ�_fake",1700,"fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000240a01">
"True&.&.&. Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE0*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
I pick up Ren to put him back into my bag&, but stop midway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000250a01">
"Ren&. What is this?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u110", 1100, -131, -283, "cg/ev/m/ev004���@�N��b_m.jpg");
	Move("�G�d�u110", 700, -131, -193, Dxl1, false);
	Fade("�G�d�u110", 700, 1000, null, true);

	Wait(300);

	CreateTextureSP("�G�d�u109", 1090, Center, Middle, "cg/ev/ev004���@�N��b.jpg");

	FadeDelete("�G�d�u110", 800, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
Someting glistened in front of Ren's eye&.
Like drops of water&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000260a01">
"There's something stuck around your eye&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000270a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE0*", 1800, 0, null);

	FadeDelete("�G�d�u109", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
When my hand reaches his eye&, he turns his head&.
He doesn't look this way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000280a01">
"Ren?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000290a06">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000300a01">
"Look at me&. What's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE11", 500, 1, null);

	EfRecoIn1(5000,200);

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev026�@�����ec.jpg");

	EfRecoIn2(500);

	Wait(500);

	EfRecoOut1(100);

	Delete("�G����*");

	SetVolumeEX("SE11", 1000, 450, null);

	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
The memory of when Ren once stopped me from touching his 
forehead suddenly returned to me&.

He never seemed to get any worse after that&. Plus other 
things happened&, so I must've forgotten about it&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000310a01">
"Hey&, Ren&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000320a06">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000330a01">
"Look me in the eye&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000340a06">
"You don't have time to waste on trivial matters right now&, do you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000350a01">
"Trivial matters&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000360a06">
"Yes&. It's a trivial matter&. From now on&, you can't make
 something like this a priority&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000370a01">
"What are you saying?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
Without caring that he wouldn't look at me&, I moved my 
face closer to his&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000380a01">
"I've told you this over and over&. If you're not working&,
 I'm screwed&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000390a06">
"I will put in as much effort as I can to not be a burden
 to you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000400a01">
"That's not what I meant!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000410a06">
"If I cannot function as an Allmate&, I'll just be garbage&.
 And so I don't&, I&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000420a01">
"Hey&, stop that&. What the hell? What are you saying?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000430a06">
"If I become inefficient&, I will just be trouble for you&,
 Aoba&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000440a01">
"That's not true&. I'm not saying that&, I'm genuinely
 concerned about you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000450a06">
"It's fine&. I don't want to cause you any trouble&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000460a01">
"I never said anything like that&. Ren&, listen to me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/8000470a06">
"Please don't mind me&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000480a01">
"You&.&.&. enough with that!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0133]
Ren's words were too much for me&, and I raised my voice&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0134]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/8000490a01">
"What's happened to you? Do you have any idea what you're
 saying?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 700, null);
	SetFrequency("SE11", 1500, 200, Dxl3);

	CreateTextureEX("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");

//	CreatePlainSP("�G��", 990);
//	Shake("�G��", 150, 0, 2, 0, 0, 500, null, true);
//	Delete("�G��");

	SetVolumeEX("SE*", 1500, 0, null);
	Fade("bg_el2", 1000, 1000, null, true);

	CreateSE("SE01","se����_�h�A�S_���J������01");
	MusicStart("SE01",0,500,0,1000,null,false);

//	Shake("bg_el2", 150, 0, 1, 0, 0, 500, null, true);

	Wait(500);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
With a light shake&, the elevator came to a stop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("bg_el3", 10000, center, middle, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[.jpg");
	Fade("bg_el3", 500, 1000, null, true);

//�����t�@�C��["dm5290.nss"]

}
