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


scene dm5300.nss_MAIN
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
	#ev900�����P�l�̑��ta=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5310.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;
}


scene dm5300.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSPadd("�G�F��", 5000, "ffffff");

	OnBG(10,"bg304141_5_���]�^���[�p�[�e�B�z�[��");
	FadeBG(0,true);

	Delete("��w�i");

//	Wait(1000);

	FadeDelete("�G�F��", 200, null, true);

	CreateSE("SE10","se��_�K��_�����01L");
	MusicStart("SE10",1000,400,0,1000,null,true);

//	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
And then&, the stalled sounds begin to gush in&. 

The slow motion world and the heaviness in my legs went 
away&.

{	SetVolumeEX("SE*", 3000, 0, null);}
Right now&, that&.&.&.

{	SoundPlay("@dm007a",0,450,true);}
What just happened&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fwm�x��C_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm53/0000020e18">
"Hey&, that's him!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
The security guards come into the hall&, yelling out when 
they had found me&.

That's right&, I need to get away&.

I can't let myself get caught before I find Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 100, -1024, InBottom, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	Move("�G�w�i100", 200, @300, @0, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I push my way through the confused crowd&, watching my 
footsteps&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�G�w�i100");

	CreateTextureSP("�G�w�i", 100, Center, InBottom, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 1500, 1500, null, true);
	Move("�G�w�i", 0, @0, @-288, null, true);
	DrawDelete("�G����", 300, 100, Dxl1, "slide_01_01_1", true);


	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	Move("�G�w�i", 0, 512, @0, null, true);
	DrawDelete("�G����", 300, 100, Dxl1, "slide_01_01_0", true);


	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Move("�G�w�i", 0, -1536, @0, null, true);
	DrawDelete("�G����", 300, 100, Dxl1, "slide_01_01_1", true);

	CreateSE("SE01","se����_����_����@01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Move("�G�w�i", 2500, @500, @50, Dxl1, false);

	Wait(1000);

	SetVolumeEX("SE*", 1500, 0, null);
	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
I pull away from the guests to avoid contact&, and the 
further in I went&, the more the crowd opened up&.

There&, I see a lump of fur pass by&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000030a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
&.&.&.There he is!

But before I can get any closer to him&, a wall of police 
wait for me on the other side&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, -1021, -572, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");
	Move("�G�w�i100", 500, -918, -572, Dxl3, false);
	Fade("�G�w�i100", 500, 1000, null, true);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm53/0000040e16">
"That damn dog is quick!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl3, true);

	Wait(30);

	Delete("�G�w�i100");

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��03");
	MusicStart("SE01",0,700,0,1300,null,false);

	FadeDelete("�G�F��", 100, Dxl3, true);

	CreateSE("SE02","se����_��_�@�ߖ�01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000050a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
//	DeleteFw();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The guard kicks at Ren as he was trying to escape&, and 
his body of fur tumbles to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/
	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000060a01">
"Ren!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, Dxl2, "cg/data/zoom_01_00_1.png", true);

	CreateTextureSP("�G�w�i", 100, -918, -572, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[��_l.jpg");

	DrawDelete("�G����", 150, 100, Dxl2, "zoom_01_00_0", true);

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(1000);

	CreateSE("SE02","se�퓬_�e_�\����01����");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("�G�F��", 100, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I immediately rush up to him and hold him&.
The guards surround me and point their guns&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm53/0000070e16">
"Wait&. The order is to capture him alive&. Don't use guns&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
When the one guard says that&, the others move to restrain 
me instead&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,600,0,1100,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000080a01">
"&.&.&.! Let go of me!"

{	Fw("fwm�x��B_�ʏ�_normal");}
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm53/0000090e17">
"Stay down!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 300, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I try to protect Ren by holding him to my chest&, trying to keep myself on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000100a01">
"Don't touch me!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Let go&.&.&.!

Ren&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 100, 0, null);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�����Ƀ��x���F�S
$HALevel=4;
//���ǂ���A�Ƌ������Ɂi�����t�j
	HAFade(2000, 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
And then&, suddenly&, a ripping pain ran through my brain&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXsub("�G�F��", 5000, "WHITE");
	CreateColorEXsub("�G�F��", 5001, "00FFFF");

	Fade("�G�F��", 1000, 300, null, false);
	Fade("�G�F��", 1000, 300, null, false);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	HAFade(2000, 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
Ouch&.&.&.!

Shit&, my head&.&.&.!

It's tearing apart&.&.&.

Ren&.&.&.

Ren&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ǂ���A�ƐS���̌ۓ�

//�������t����u�\�����x�̏�Ԃ̑��t�ɂ��邩�v�m�F
	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 950, 400, null, false);
	Fade("�G�F��", 500, 600, Dxl1, true);
	Wait(250);
	Fade("�G�F��", 200, 0, Dxl2, true);

	Wait(200);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 950, 600, null, false);
	Fade("�G�F��", 500, 700, Dxl1, true);
	Wait(250);
	Fade("�G�F��", 200, 0, Dxl2, true);

	Wait(200);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 950, 800, null, false);
	Fade("�G�F��", 500, 800, Dxl1, true);
	Wait(250);
	Fade("�G�F��", 200, 0, Dxl2, true);

	Wait(200);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 950, 1000, null, false);
	Fade("�G�F��", 500, 1000, Dxl1, true);
	Wait(250);
	FadeDelete("�G�F��", 200, Dxl2, true);

	Wait(500);

	CreateColorEX("�G�F����", 5000, "000000");
	CreatePlainEX("�G�ʓ�", 4000);
	SetTone("�G�ʓ�", NegaPosi);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");

	Fade("�G�F����", 0, 1000, null, true);

	Wait(50);

	Fade("�G�ʓ�", 0, 1000, null, true);
	Delete("�G�F����");
	Fade("�G�F��", 0, 0, null, true);


	Wait(50);

	Fade("�G�t���b�V����", 0, 1000, null, true);
	Delete("�G�F����");
	Delete("�G�ʓ�");
	Fade("�G�F��", 0, 1000, null, true);

	Wait(100);

	Delete("�G�d�u*");
	FadeDelete("�G�t���b�V����", 600, null,true);

	CreatePlainSP("�G��", 5010);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,110,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);
	#ev900�����P�l�̑��ta=true;

	CreateColorSP("�G�F��", 5000, "000000");
	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	Delete("�G��");
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,true);

	Delete("�G�摜");

	Wait(2200);

	TemptationDelete("�G�������t�U�f���B");
	FadeDelete("�G�F��", 2000, null, true);

	Wait(500);

	Fw("fw�����t_�ʏ헇_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/0000110b01">
"&.&.&.Don't touch me&."

{	Fw("fwm�x��A_�ʏ�_normal");}
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm53/0000120e16">
"What?"

{	Fw("fw�����t_�ʏ헇_normal2");}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/0000130b01">
"Don't touch me&, let go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 200, 1000, Dxl1, true);
	Wait(100);
	FadeDelete("�G�F��", 150, Dxl1, true);

	Fw("fwm�x��C_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm53/0000140e17">
"&.&.&.! &.&.&.Yes&.&.&. s-&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm53/0000150e16">
"Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�����t_�ʏ헇_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/0000160b01">
"You&, you're in the way too&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 200, 1000, Dxl1, true);
	Wait(100);
	FadeDelete("�G�F��", 150, Dxl1, true);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm53/0000170e16">
"&.&.&.Yes&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i", 500, @0, @50, Dxl1, false);
	FadeDelete("�G�w�i", 500, null, true);

//������ł͋q�����킴��ƍ��f���Ă���
	CreateSE("SE01","se��_�K��_�����01L");
	MusicStart("SE01",3000,400,0,1000,null,true);

/*
	Fw("fw�����t_�ʏ헇_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000200a01">
"Now then&.&.&."

{	Fw("fw�����t_�ʏ헇_smile2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000210a01">
"You two&, be nice and fight to the death&."

{	Fw("fw�����t_�ʏ헇_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/0000220a01">
"Go&, and&.&.&. tear each other apart&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 300, 1000, Dxl1, true);
	CreateTextureSPadd("�G����", 1000, Center, Middle, "cg/ef/efbg����01.jpg");
	Zoom("�G����", 500, 2000, 2000, Axl2, false);
	Wait(100);
	FadeDelete("�G�F��", 150, Dxl1, true);
	FadeDelete("�G����", 150, Dxl1, true);

	Wait(1000);
*/

	Fw("fw�����t_�ʏ헇_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/0000180b01">
"Listen&."

{	Fw("fw�����t_�ʏ헇_normal");}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/0000190b01">
"Everyone here will forget about me&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���q�̂���߂����҂����Ǝ~�܂�B
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 200, 1000, Dxl1, true);
	Wait(100);
	FadeDelete("�G�F��", 150, Dxl1, true);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm53/0000240e16">
"Yes&.&.&."

{	Fw("fwm�x��C_�ʏ�_normal");}
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm53/0000230e18">
"Ye&.&.&. s&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm53/0000250e17">
"Yes&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorEX("�G�F��", 10000, "000000");
	Fade("�G�F��", 2000, 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se�l��_�Ռ�_�]�|03����");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|03����");
	MusicStart("SE02",0,500,0,900,null,false);

	Wait(4000);

/*
//�����o�F���o�����\��
//���r�d�F�e�����������苿��
	CreateSE("SE01","se�퓬_�e_���C01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE01","se�퓬_�e_���C01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(100);
	CreateSE("SE02","se�퓬_�e_���C01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�����t�@�C��["dm5310.nss"]

	Wait(500);
	ClearFadeAll(500, true);
	CreateSE("SE12","se��_�퓬_�e����01L");
	SetPan("SE12", 0, -1000, Dxl3);
	MusicStart("SE12",0,300,0,800,null,true);

	Wait(100);

	CreateSE("SE11","se��_�퓬_�e����01L");
	SetPan("SE11", 0, 1000, Dxl3);
	MusicStart("SE11",0,300,0,1300,null,true);

	Wait(10);
	CreateSE("SE13","se��_�퓬_�e����01L");
	MusicStart("SE13",0,700,0,1000,null,true);

	Wait(3000);
	SetVolumeEX("SE*", 1000, 0, null);
	Wait(1000);
*/

}