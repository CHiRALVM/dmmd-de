//<continuation number="290">
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


scene dm3140.nss_MAIN
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
	#bg303021_5_��y�{�݃N���u�t���A=true;
	#bg303022_5_��y�{�݃N���u�t���A=true;
	#bg303023_5_��y�{�݃N���u�t���A=true;
	#bg303041_5_��y�{�݂u�h�o���[��=true;
	#bg303042_5_��y�{�݂u�h�o���[��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3150.nss";

}


scene dm3140.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�����݁F��dm1140�̗ގ��V�[���ɏ���
/*
	PrintBG("��w�i", 30000);

	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);


	CreateTextureEX("�G�w�i", 150, Center, Middle, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");
	CreateTextureEX("�G�w�i��", 100, Center, Middle, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	CreateColorEXadd("�G�F��", 5000, "RED");
	CreateColorEXadd("�G�F��", 5000, "GREEN");
	CreateColorEXadd("�G�F��", 5000, "BLUE");

//�e�F�ȉ��K�v�ł���΃v���Z�X��
	$Fadetime = 400;
	$Waittime = 50;

	Zoom("�G�w�i*", 0, 2000, 2000, null, true);
	Move("�G�w�i", 0, @-512, @-288, null, true);
	Move("�G�w�i��", 0, @512, @288, null, true);

	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("@dm*", 1000, 450, null);


	Fade("�G�F��", 500, 1000, Dxl1, true);
	Fade("�G�w�i*", 0, 1000, Null, true);
	Move("�G�w�i", 3000, 0, 0, null, false);
	Fade("�G�F��", 500, 0, Dxl1, true);
	Fade("�G�F��", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("�G�F��", $Fadetime, 0, Dxl1, true);
	Fade("�G�F��", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("�G�F��", $Fadetime, 0, Dxl1, true);
	Fade("�G�F��", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("�G�F��", $Fadetime, 0, Dxl1, true);
	Fade("�G�F��", 500, 1000, Dxl1, true);

	Delete("�G�w�i");

	Move("�G�w�i��", 3000, 0, 0, null, false);
	Fade("�G�F��", 500, 0, Dxl1, true);
	Fade("�G�F��", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("�G�F��", $Fadetime, 0, Dxl1, true);
	Fade("�G�F��", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("�G�F��", $Fadetime, 0, Dxl1, true);
	Fade("�G�F��", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("�G�F��", $Fadetime, 0, Dxl1, true);
	Fade("�G�F��", 500, 1000, Dxl1, true);

	Delete("�G�w�i��");

	FadeDelete("�G�F*", 1000, Dxl1, false);
	Sei(6000,1000,true);

*/
//������A�Z�C�̗̓G�t�F�N�g�i���q


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

//���C�g����===========================================================
	CreateColorEXadd("�G�F���C�g1", 1109, "883355");
	CreateColorEXadd("�G�F���C�g2", 1109, "448800");
	CreateColorEXadd("�G�F���C�g3", 1109, "005588");
	DrawTransition("�G�F���C�g1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$���C�g�i�b�g���P = @�G�F���C�g1;
	$���C�g�i�b�g���Q = @�G�F���C�g2;
	$���C�g�i�b�g���R = @�G�F���C�g3;
	$���C�g�^�C�� = 300;

	CreateProcess("�v���Z�X���C�g�P", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("�v���Z�X���C�g�P","�v���Z�X���C�g�P");

	CreateColorSP("�v���Z�X���]�F", 10, "000000");
	CreateTextureSP("�v���Z�X���]���n", 11, 0, 0, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");


	CreateLoopFade("�v���Z�X���]��",200,true,AddRender,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	CreateLoopFade2("�v���Z�X���]���[�U�[",150,true,false,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg);

	CreateTextureEX("�_��", 1000, 0, 0, "cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg");
	//Fade("�v���Z�X���]�_��", 0, 1000, null, true);

	//WaitKey();
	CreateBlink("�_��");

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("�v���Z�X���]*","�GSuf");
	Zoom("�GSuf", 0, 1500, 1500, null, true);
	Zoom("�_��", 0, 1500, 1500, null, true);
	Request("�GSuf", Smoothing);
	Request("�_��", Smoothing);

	Move("�GSuf", 0, 150, @0, null, true);
	Move("�_��", 0, 150, @0, null, true);


	GoLoopFade("@�v���Z�X���]��",100);
	GoLoopFade2("@�v���Z�X���]���[�U�[",71);
	Request("@�v���Z�X���C�g�P", Start);


	Delete("��w�i");

//�\���J�n

	SoundPlay("@dm022",0,450,true);
	SetVolumeEX("@dm022", 1000, 800, null);


	Move("�GSuf", 6000, -150, @0, null, false);
	Move("�_��", 6000, -150, @0, null, false);

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);


	Wait(4000);
	Wait(1000);

	CreatePlainSP("�G�X�N���[��", 3000);
	Move("�GSuf", 0, 0, @0, null, true);
	Move("�_��", 0, 0, @0, null, true);
	Zoom("�GSuf", 0, 1000, 1000, null, true);
	Zoom("�_��", 0, 1000, 1000, null, true);


	Fade("�G�X�N���[��", 500, 0, null, true);
	Delete("�G�X�N���[��");

	Wait(500);
	SetVolumeEX("@dm022", 3000, 450, null);
	//DeleteBlink("@�G�w�i");

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000010a01">
"&.&.&.Whoa&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The moment I walk onto the dance floor I begin to feel 
dizzy&.

The heavy vibrations from the music and low bass&, the 
electronic sounds piercing my eardrums&.&.&. it all feels 
so awful&.

The lights flash in an unsteady pattern so I can't keep my eyes focused&. All in all it was an awful place to be&.

Is this "getting high on lights"?

The floor is filled with people dancing&.

I bet they've been here for a long time&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm31/4000020a06">
"Aoba&, are you okay?"

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000030a01">
"&.&.&.For now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	SetVolumeEX("@dm022", 1000, 250, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�GSuf*");
	DeleteBlink("�_��");

	Request("@�v���Z�X���]��", Stop);
	Request("@�v���Z�X���]���[�U�[", Stop);
	Delete("@�v���Z�X���]*");
//	Request("@�v���Z�X���C�g�P", Stop);
//	Delete("@�v���Z�X���C�g�P");
//	Delete("�G�F���C�g*");

	CreateLoopFade("�v���Z�X���]��",200,true,AddRender,cg/bg/bg303041_5_��y�{�݂u�h�o���[��.jpg,cg/bg/bg303041_5_��y�{�݂u�h�o���[��.jpg,cg/bg/bg303041_5_��y�{�݂u�h�o���[��.jpg);


	CreateMask("mask01", 2500, center,middle,"cg/bg/x/bg303041_5_��y�{�݂u�h�o���[��_mask.png",false);

	CreateColorSP("�v���Z�X���]����", 150, "000000");
	Fade("�v���Z�X���]����", 0, 200, null, true);


	CreateSurface("mask01/�GSuf",300,0,0,false);
	SetAlias("mask01/�GSuf", "mask01/�GSuf");
	SetSurface("�v���Z�X���]��*","mask01/�GSuf");
	CreateTextureSP("�G�w�isuf", 100, Center, Middle, "cg/bg/bg303042_5_��y�{�݂u�h�o���[��.jpg");
	SetSurface("�G�w�isuf","mask01/�GSuf");
	//Zoom("�GSuf", 0, 1500, 1500, null, true);
	Request("mask01/�GSuf", Smoothing);
	Move("@�v���Z�X���]*", 0, @0, @0, null, true);

	DrawTransition("�G�F���C�g1", 0, 300, 300, 800, null, "cg/data/beam_03_00_0.png", true);
	DrawTransition("�G�F���C�g2", 0, 300, 300, 800, null, "cg/data/beam_03_00_0.png", true);
	DrawTransition("�G�F���C�g3", 0, 300, 300, 800, null, "cg/data/beam_03_00_0.png", true);

	GoLoopFade("@�v���Z�X���]��",100);





	OnBG(10,"bg303041_5_��y�{�݂u�h�o���[��");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg303042_5_��y�{�݂u�h�o���[��.jpg");
	CreateTextureSP("�G�w�i��", 90, Center, Middle, "cg/bg/bg303041_5_��y�{�݂u�h�o���[��.jpg");
	FadeBG(0,true);

	CreateColorSP("�G�����B", 60, "000000");
	DrawTransition("�G�����B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�d�u", 0, 1000, null, true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
The music blasting throughout the room makes it a bit hard to hear Ren&.

While taking glances at the floor&, we walked up to the 
second floor by a staircase near the door&.

On the second floor are chairs and tables&, placed so one 
can look down on the dance floor&.

A man by the railing guides us to our seats&.

{
	CreateSE("SE32","se�l��_����_�ߎC��17");
	MusicStart("SE32",0,700,0,800,null,false);
	CreateSE("SE40","se�l��_����_�ߎC��15");
	MusicStart("SE40",0,700,0,1000,null,false);
}
Mink plops down on the sofa and crosses his legs&.
I sat next to him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",1740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/4000040a05">
"Well&, go have some fun&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
It surprises me that Mink would say something like that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000050a01">
"Have fun&.&.&.?<?>
{
Fw("fw���t_�ʏ�_rage");} 
 What did we even come here for?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"bu�~���N_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/4000060a05">
"Stretch out your wings a bit&."


{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000070a01">
"Huh&.&.&.? Are you messing with me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
A slight grin rises to Mink's face&.

Just being around that dance floor has me on edge&.

I don't want to stay here too long&.

I'd put up with it if we were here for a reason&, but to 
stretch out my wings? That's not funny&.

{
	CreateSE("SE32","se�l��_����_�ߎC��01");
	MusicStart("SE32",0,500,0,1000,null,false);
	Wait(500);
	CreateSE("SE33","se�l��_����_����01");
	MusicStart("SE33",0,600,0,1000,null,false);
	CreatePlainSP("�G��", 20000);
	Shake("�G��", 150, 0, 3, 0, 0, 500, null, true);
	Delete("�G��");
}
When I get off the sofa&, my feet stagger&.

It's because of these lights and sounds&.&.&. I feel sick&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"bu�~���N_�ʏ�_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/4000080a05">
"High already? This can't be your first time with drugs&."

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000090a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorEX("�G�F��", 10000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	SetVolumeEX("@dm022", 1000, 700, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
I balance myself with my hands on the back of the sofa 
and shut my eyes&, so I don't see the floor below me&.

But still&, the lights flash through my closed eyelids&.

The sounds go through my ears either way&.&.&. And the 
sickness in my stomach grows while a headache starts up&.

&.&.&.Shit&. I really am high&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE32","se����_��_����01");
	MusicStart("SE32",0,1000,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110a]
I take out my meds from my bag and swallow just a few of 
them&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	//SetVolumeEX("@dm*", 1000, 1, null);
	SetVolumeEX("@dm022", 1000, 1, null);
	SetVolumeEX("SE*", 200, 0, null);

	CreateColorEX("�G����", 6000, "000000");
	CreateColorSP("�G����", 5800, "000000");
	DrawTransition("�G����", 0, 700, 700, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateTextureSP("�G���G2", 5700, Center, Middle, "cg/fu/fu�~���N_�ʏ퐳��_normal.png");
	CreateTextureSPsub("�G���G", 5700, Center, Middle, "cg/fu/fu�~���N_�ʏ퐳��_normal.png");
	Move("�G���G", 0, @0, @30, null, true);

	CreateTextureSP("�G�O�p", 5500, -250, 250, "cg/bg/bg303041_5_��y�{�݂u�h�o���[��.jpg");

	Request("�G���G", Smoothing);
	Move("�G���G", 0, @0, @40, null, true);

	Zoom("�G���G*", 0, 2000, 2000, null, true);
	Zoom("�G�O�p", 0, 2000, 2000, null, true);

	SetShade("�G�O�p", MEDIUM);

	SetBlur("�G���G2", true, 2, 500, 1200, false);
	SetBlur("�G���G", true, 2, 500, 1200, false);

	MoveFTP1("@�G���G*",2000,1,1);
	MoveFTP2("@�G�O�p",3000,4,2);

	CreateSE("SE01","se�l��_�S��_�ۓ�01L");
	MusicStart("SE01",0,500,0,500,null,true);

//	Fade("�G����", 0, 800, null, true);
	FadeDelete("�G�F��", 500, Dxl1, true);

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
When I raise my head&, I meet Mink's eyes&.

His cold stare sends shivers down my spine&.

If I was in a different situation&, I could easily provoke 
him&.&.&. But I can't right now&.

His blank expression pierces me like needles&.

Deeper and deeper&.

It reaches all the way into the depths of my heart&, and 
sinks in&.&.&. deeper&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreatePlainSP("�G��", 20000);
	MoveFTP1stop();
	MoveFTP2stop();
	Delete("�G���G");
	Delete("�G���G2");
	Delete("�G�O�p");
	Delete("�G����");
	Delete("�G����");

//	CreateTextureSP("ev_yure", 700, center, middle, "cg/bg/bg303042_5_��y�{�݂u�h�o���[��.jpg");
//	Zoom("ev_yure", 0, 1020, 1020, null, true);
//	Fade("ev_yure", 0, 500, null, true);
//	MoveFTP1("@ev_yure",10000,6,4);

	Lens_Set("�����Y�P",5000,-1000,-1000,3000,3000);
	Lens_Start(3000);

//	Shake("�G�w�i", 500, 5, 5, 0, 0, 500, null, false);
	FadeDelete("�G��", 500, null, true);

	Delete("�G�w�i��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
I avert my eyes from Mink's&.
But I can still feel him looking at me&.

Still looking at me&.

Still&.&.&.

Still&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 7000);

	TemptationNoizSet("�G�������t�U�f������",6102);
	TemptationAobaSet("�G�������t�U�f",6100,Center,-240,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	//CreateColorSP("�G�F��", 6110, "000000");
	CreateColorSP("�G�������t�U�f���B", 6110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 750, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01T","se�l��_�S��_�ۓ�01");
	MusicStart("SE01T",0,700,0,1000,null,false);
	TemptationAobaIn("�G��");
	TemptationAobaOut(100,true);
	TemptationDelete("@�G�������t�U�f���B");
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
&.&.&.Who?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000100a01">
"&.&.&.Ughhhhaahh!"

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/4000110a05">
"&.&.&.Hey&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 7000);

	DeleteAllSt(0,true);

	TemptationNoizSet("�G�������t�U�f������",6102);
	TemptationAobaSet("�G�������t�U�f",6100,Center,-210,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	//CreateColorSP("�G�F��", 6110, "000000");
	CreateColorSP("�G�������t�U�f���B", 6110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE02T","se�l��_�S��_�ۓ�02L");
	MusicStart("SE02T",3000,700,0,600,null,true);
	CreateSE("SE01T","se�l��_�S��_�ۓ�01");
	MusicStart("SE01T",0,700,0,1000,null,false);
	TemptationAobaIn("�G��");
	TemptationAobaOut(100,true);
	TemptationDelete("@�G�������t�U�f���B");
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
Watching me&.

Someone's been watching me&.

This whole time&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000120a01">
"Ahhhhhhhh!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE02T", 2000, 200, null);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 21000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateColorSP("�G�F��", 15000, "000000");

	Delete("�G����");
	Delete("�G�w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
I want to escape from their gaze; I bolt down the stairs 
from the private room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(32);

	Delete("�v���Z�X*");
	Delete("�GSuf");
	DeleteBlink("�_��");

	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);
//	CreateTextureSP("ev_yure", 100, center, middle, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");
//	Zoom("ev_yure", 0, 1020, 1020, null, true);
//	Fade("ev_yure", 0, 500, null, true);
//	MoveFTP1("@ev_yure",4000,6,4);

//���C�g����===========================================================
	CreateColorEXadd("�G�F���C�g1", 1109, "883355");
	CreateColorEXadd("�G�F���C�g2", 1109, "448800");
	CreateColorEXadd("�G�F���C�g3", 1109, "005588");
	DrawTransition("�G�F���C�g1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$���C�g�i�b�g���P = @�G�F���C�g1;
	$���C�g�i�b�g���Q = @�G�F���C�g2;
	$���C�g�i�b�g���R = @�G�F���C�g3;
	$���C�g�i�b�g�����x = 1000;
	$���C�g�^�C�� = 500;

	CreateProcess("�v���Z�X���C�g�P", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("�v���Z�X���C�g�P","�v���Z�X���C�g�P");

	CreateColorSP("�v���Z�X���]�F", 10, "000000");
	CreateTextureSP("�v���Z�X���]���n", 11, 0, 0, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");

	CreateLoopFade("�v���Z�X���]��",200,true,AddRender,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	CreateLoopFade2("�v���Z�X���]���[�U�[",150,true,false,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg);

	CreateTextureEX("�_��", 1000, 0, 0, "cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg");
	//Fade("�v���Z�X���]�_��", 0, 1000, null, true);

	//WaitKey();
	CreateBlink("�_��");

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("�v���Z�X���]*","�GSuf");
	Request("�GSuf", Smoothing);
	Request("�_��", Smoothing);

	GoLoopFade("@�v���Z�X���]��",100);
	GoLoopFade2("@�v���Z�X���]���[�U�[",71);
	Request("@�v���Z�X���C�g�P", Start);

	SetVolumeEX("@dm022", 3000, 450, null);

	DrawDelete("�G�F��", 300, 100, null, "slide_01_03_1", true);

	Delete("�G��*");
//	Delete("�G����*");
//	Delete("�G�d�u");

	Wait(300);

//���_���X�t���A�ɉ���鑓�t�B�j�ɂԂ����Ă�낯��B
	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 200, 50, 50, 0, 0, 500, null, true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000130a01">
"&.&.&.&.&."

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000140e22">
"Hey now&, you okay?"

{
	SetVolumeEX("SE02T", 1000, 400, null);
	SetFrequency("SE02T", 1000, 800, null);
	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000150a01">
"&.&.&.&.&."

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000160e22">
"Keep your head up! Is this your first time? You look
 pretty messed up&."

{
	SetVolumeEX("SE02T", 1000, 600, null);
	SetFrequency("SE02T", 1000, 1000, null);
	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000170a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm���C_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000180e22">
"Hey&, hey&. They say this light makes you more sensitive if
 you're a guy&. Is it the same for you?"

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000190e22">
"So why don't we test it out for a bit?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SEL01","se�[��_���__�����g01L");
	MusicStart("SEL01",3000,300,0,600,null,true);

//������G�鉹�A��������
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02T", 1000, 800, null);
	SetFrequency("SE02T", 1000, 1200, null);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000200a01">
"&.&.&.&.&.!"

{
	SetVolumeEX("SEL01", 1000, 900, null);
	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000210e22">
"Okay now&, don't resiiiist&. Just try to relax&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 1000, 1500, null);

//������G�鉹�A������������
	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02T", 1000, 1500, null);
	SetFrequency("SE02T", 1000, 1600, null);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000220a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);

//�������t�̌��e����u�p�b�Ɖf��

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorEX("�G�F��", 9000, "000000");
	CreatePlainEX("�G��", 8990);
	SetTone("�G��", NegaPosi);
	CreateColorEXadd("�G�t���b�V����", 9000, "FFFFFF");

	Fade("�G�F��", 0, 1000, null, true);

	Wait(50);

	Fade("�G��", 0, 1000, null, true);
	Delete("�G�F��");

	Wait(50);

	Fade("�G�t���b�V����", 0, 1000, null, true);
	Delete("�G�F��");
	Delete("�G��");

	Wait(100);

	FadeDelete("�G�t���b�V����", 600, null,true);

	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000230a01">
"&.&.&.Don't touch me&."

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000240e22">
"Hm?"

{	Fw("fw���t_�ʏ�͍s�g_serious");}
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000250a01">
"I said don't touch me&, let go&."

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000260e22">
"Eh? &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/4000270a01">
"Let go&."

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm31/4000280e22">
"&.&.&.&.&.&.O- kay&."

//���j���q�A�t���t���Ɨ��������Ă���
//���]�������m��Ȃ��̂Ł��̓R�����g�A�E�g���܂��B
{//	Fw("fw���t_�ʏ�_shock4");
}
//�y���t�z
//<voice name="���t" class="���t" src="voice/dm53/4000070b01">
//�u�c�c�c�c�v


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(300);

	CreatePlainSP("�G��", 5000);
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G��", 500, 0, 5, 0, 0, 1000, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

	Wait(1000);

//�����t�A���̏�ɂǂ����Ɠ|���
//����ʈÓ]

	ClearFadeAll(1000, true);

	Wait(2000);

//�����t�@�C��["dm3150.nss"]

}
