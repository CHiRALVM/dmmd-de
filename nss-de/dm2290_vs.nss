//<continuation number="270">
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


scene dm2290_vs.nss_MAIN
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
	#evf03�h�q�`�l�����ӂ�����=true;
	#evf03�h�q�`�l�����ӂ�����a=true;
	
	#bg304052_5_���]�^���[�����G���A�L��02=true;
	#bg304053_5_���]�^���[�����G���A�L��03=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2300.nss";

}


scene dm2290_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//���F�a�f�l�p������
	SoundPlay("@dm018",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);

	CreateSE("SE01","se����_�h�A���]����_���J��01");//�������u�r�d�Fse����_�h�A���]����_���J��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 0, null, true);
	DrawDelete("�G�F��", 1000, 100, null, "slide_06_00_0", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
What was beyond the door had an entirely different 
atmosphere compared to the first floor&.

This floor is white as well&, but it's much longer and much 
more plain&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000010a03">
"There's something I need to do here&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE11","se�l��_����_����03");//�������u�r�d�Fse�l��_����_����03�v
	MusicStart("SE11",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Noiz closes his map and walks down the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	OnBG(10,"bg304052_5_���]�^���[�����G���A�L��02");
//	FadeBG(1000,true);

	OnBG(10,"bg304051_5_���]�^���[�����G���A�L��01");
	FadeBG(1000,true);

	SetVolumeEX("SE11", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
He watches his feet while he walks&, as if he's looking for something&, and stops&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000020a03">
"It's here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Noiz points it out with his chin&.

He leans over to the network panel opening in the wall&. 
Then&, he pulls a cord out of his Coil and plugs it in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000030a01">
"What are you trying to do?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000040a03">
"I'm going to reroute this floor's network&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000050a01">
"Reroute?"

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000060a03">
"This floor and beyond is off-limits to normal people&. The
 security is tight&, too&. So now I'm going to give off a
 fake signal and keep this floor clear&."

{	Fw("fw�m�C�Y_�ʏ�_normal3");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000070a03">
"No matter how rough we get&, it'll look like this floor is  perfectly fine&."

{	Fw("fw�m�C�Y_�ʏ�_cool2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000080a03">
"It'll only work as a temporary measure&, but it's better
 than nothing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹03");//�������u�r�d�Fse����_�R�C��_���쉹03�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Noiz pulls out his Coil's monitor display and keyboard&, 
working away&.

{
//�������u�r�d�Fse����_�p�\�R��_�L�[�{�[�h����01�v
	CreateSE("SE11","se����_�p�\�R��_�L�[�{�[�h����01");
	MusicStart("SE11",0,700,0,1000,null,true);}
I watch the words spill onto the screen as he keeps 
tapping away on the keyboard&.

His speed is near godly&, but it still looks like it's 
going to take some time&.

It takes some courage to stay where the enemy is for such  a long period of time&.

I stood there fidgety&, waiting for Noiz to finish&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	SetVolumeEX("SE11", 1500, 1, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);
	Wait(2500);
	SetVolumeEX("SE11", 1500, 700, null);
	FadeDelete("�G�F��", 1000, null, true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000090a01">
"Are you done yet?"

{	Fw("fw�m�C�Y_�ʏ�_angry2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000100a03">
"Just a little more&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
Noiz answers without stopping his hands&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateTextureEX("�G�d�u", 3100, Center, Middle, "cg/ev/evf03�h�q�`�l�����ӂ�����.jpg");
//	Fade("�G�d�u", 0, 1000, null, true);

	CreateSE("SE01","se����_����_�����h�q01");

	CreateWindow("�G�}�X�N", 2000, 0, 100, 1024, 374, false);
	SetAlias("�G�}�X�N","�G�}�X�N");
	Zoom("�G�}�X�N", 0, 1000, 0, null, true);

	CreateTextureEX("�}�X�N���C����", 2000, Center, Middle, "cg/mask/ci�E�B���h�E��01.png");
	CreateTextureEX("�}�X�N���C����", 2000, enter, Middle, "cg/mask/ci�E�B���h�E��01.png");


	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("�G�}�X�N/�G�w�i100", 1000, -139, -668, "cg/ev/l/evf03�h�q�`�l�����ӂ�����_�A�b�v_l.jpg");

	Fade("�}�X�N���C��*", 0, 1000, null, false);
	Move("�G�}�X�N/�G�w�i100", 5000, -624, @0, null, false);
	Move("�}�X�N���C����", 250, @0, 90, null, false);
	Move("�}�X�N���C����", 250, @0, 474, null, false);
	Zoom("�G�}�X�N", 250, 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
A small figure appeared in the hallway while I kept on 
alert&.

It's too small to be human&.

That's&.&.&.<?>
{	Fade("�G�d�u", 300, 1000, null, true);
	Delete("�}�X�N���C��*");
	Delete("�G�}�X�N/�G�w�i100");
	Delete("�G�}�X�N");}
	
A dog?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE40","se����_����_�����h�q01L");
	MusicStart("SE40",0,350,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
A slender dog with short black fur calmly walks this way&.

//{	SetVolumeEX("SE40", 3000, 400, null);}
What is that dog?
Is it someone's Allmate?

Either way&, it's still weird&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	SetVolumeEX("@SE40", 0, 0, null);

	FadeDelete("�G�d�u", 1000, null, true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000110a01">
"Hey&, Noiz!"

{	Fw("fw�m�C�Y_�ʏ�_angry2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000120a03">
"I'll be done soon&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000130a01">
"No&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Maybe it isn't a good idea to talk to him&, he's 
concentrating&.&.&.

I open my bag to ask Ren&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000140a01">
"Ren&, what is that? Why is a dog here?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE40", 3000, 700, null);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm22/9000150a06">
"&.&.&.Aoba&, run&. That machine-"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000160a01">
"Machine?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se����_����_�����h�q01");

	CreateTextureEX("�G�w�i", 2000, Center, Middle, "cg/ev/evf03�h�q�`�l�����ӂ�����_�A�b�v.jpg");
	SetVolumeEX("SE40", 300, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�w�i", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
The black dog comes to a stop&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�h�q_�J��01");

	CreateTextureEX("�G�Y�[��", 2000, -164, Middle, "cg/ev/m/evf03�h�q�`�l�����ӂ�����_�A�b�v_m.jpg");
	CreateTextureEX("�G�Y�[��2", 2000, -164, 0, "cg/ev/m/evf03�h�q�`�l�����ӂ�����a_�A�b�v_m.jpg");
	CreateTextureEX("�G�Y�[��3", 2000, -164, 0, "cg/ev/m/evf03�h�q�`�l�����ӂ�����a_�A�b�v_m.jpg");
	SetBlur("�G�Y�[��3", true, 2, 500, 50, false);

	Move("�G�Y�[��", 300, @0, 0, Dxl1, false);
	Fade("�G�Y�[��", 300, 1000, null, true);

	SetVolumeEX("@dm*", 300, 0, null);
	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");

	Wait(30);

	Delete("�G�w�i");
	Delete("�G�Y�[��");

	Fade("�G�Y�[��2", 0, 1000, null, true);
	Fade("�G�Y�[��3", 0, 500, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("�G�Y�[��3", 1000, 1500, 1500, Dxl1, false);
	FadeDelete("�G�Y�[��3", 750, Dxl1, false);
	FadeDelete("�G�t���b�V����", 500, null,true);

	SoundPlay("@dm008",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
&.&.&.And then opens his mouth wide&.

A long&, narrow iron pipe comes out of his deep red mouth&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�Y�[��2",300,null,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000170a01">
"!"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm22/9000180a06">
"That's a special type of Allmate with crime-prevention
 equipment added to it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_rage",1000,"fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000190a01">
"Crime prevention!? Noiz&, run!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("�G�d�u", 1100, Center, Middle, "cg/ev/evf03�h�q�`�l�����ӂ�����a.jpg");
	Fade("�G�d�u", 300, 1000, null, true);

//�������u���F�������܂����v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Noiz looks up and immediately begins to run with me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�Y�[��2", 2000, -393, -50, "cg/ev/l/evf03�h�q�`�l�����ӂ�����a_�A�b�v_l.jpg");

	CreateStencil("�}�X�N�P",2100,center,50,128,"cg/ef/effi�\�I����_ef01.png",false);
	CreateColor("�}�X�N�P/�F�P", 2100, 0, 0, 1024, 576, "RED");
	Fade("�}�X�N�P/�F�P", 0, 0, null, true);
	Request("�}�X�N�P/�F�P", MulRender);


	CreateStencil("�}�X�N�Q",2050,center,50,128,"cg/ef/effi�\�I����_ef01.png",false);
	CreateColor("�}�X�N�Q/�F�Q", 2050, 0, 0, 1024, 576, "RED");
	Fade("�}�X�N�Q/�F�Q", 0, 0, null, true);
	Request("�}�X�N�Q/�F�Q", AddRender);
	Zoom("�}�X�N�P", 0, 500, 500, null, true);
	Zoom("�}�X�N�P", 0, 1500, 1500, null, true);


	CreateSEEX("SE01","se�퓬_���K�C_�`���[�W01");

	Move("�G�Y�[��2", 300, @0, 0, Dxl1, false);
	Fade("�G�Y�[��2",300,1000,null,true);

	MusicStart("SE01",0,700,0,2000,null,true);
	Fade("�}�X�N�P/�F�P", 0, 1000, null, false);
	Fade("�}�X�N�Q/�F�Q", 0, 750, null, false);

	Rotate("�}�X�N�Q", 5000, @0, @0, -180000, null,false);
	Zoom("�}�X�N�Q", 500, 5000, 5000, Dxl1, false);
	Fade("�}�X�N�Q/�F�Q", 500, 0, Dxl1, false);

	Rotate("�}�X�N�P", 5000, @0, @0, 180000, null,false);
	Zoom("�}�X�N�P", 500, 500, 500, Dxl1, true);

	Wait(200);

	CreateSE("SE02","se�퓬_�h�q_����01");//�������u�r�d�Fse�퓬_�h�q_����01�v

	SetVolumeEX("SE01", 0, 0, null);
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("�G�F��", 4000, "000000");
	Wait(30);
	Delete("�G�d�u");
	Delete("�}�X�N�P/�F�P");
	Delete("�}�X�N�Q/�F�Q");
	Delete("�}�X�N�P");
	Delete("�}�X�N�Q");
	Delete("�G�Y�[��2");
	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_�h�q01.jpg");
	Fade("�G�F��", 70, 0, null, false);
	FadeFR2("�G������",0,1000,150,0,0,50,null, true);

//	CreateSE("SE02","se�퓬_�h�q_����01");//�������u�r�d�Fse�퓬_�h�q_����01�v
//	MusicStart("SE02",0,700,0,1000,null,false);

//	CreateColorSP("�G�F��", 4000, "000000");
//	Wait(30);
//	Delete("�G�d�u");
//	CreateTextureEX("�G������", 1100, Center, Middle, "cg/ef/efx04�r�[��_�h�q01.jpg");
//	Fade("�G�F��", 70, 0, null, false);
//	FadeFR2("�G������",0,1000,150,0,0,50,null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
But the dog is faster than us and sends a bolt of light 
flying straight at us&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�M�r�[����
//���F��Ɉړ����܂����B

{	Fw("fw���t_�ʏ�_shout");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000200a01">
"Watch out&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F���t�A�m�C�Y�̂��Ƃɋ삯����Ĕ�э��݁A���΂�
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");//�������u�r�d�Fse�l��_�Ռ�_�]�|01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 100);
	Shake("�G��", 300, 0, 30, 0, 0, 1000, null, false);
	FadeDelete("�G������", 50, null, true);

	Fw("fw�m�C�Y_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000210a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000220a01">
"Ouch&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
I push Noiz just barely out of the way and we continue 
running&.

What was that just now?
It was like a beam&.&.&.

{{	CreateSE("SE01","se�[��_��_�������_01");
	MusicStart("SE01",0,500,0,2000,null,false);}}
When I lift my chin up&, I see the wall the beam had hit is now a black color&, burning and melting&.

If that had been a direct hit&.&.&. 
I shiver at the thought&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_normal");
	FwPro("fw���t_�ʏ�_pinch",1500,"fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0079]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000230a01">
"Just in the nick of time&, too&.&.&. Ouch!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 800, 0, null);

	CreateColorSPmul("�G�F��", 4000, "CC0000");
	Wait(30);
	FadeDelete("�G�F��", 100, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
When I try to get up&, a numbing pain runs up my side&.

I find a scalding burn under my torn shirt on one side of  my body&.

I must've been hit by that beam when I tackled Noiz out of the way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000240a03">
"That&, you&.&.&."

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000250a01">
"Forget about me&, over there!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
I point frantically at the dog while Noiz scowls at my 
wound&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u", 1100, Center, 0, "cg/ev/l/evf03�h�q�`�l�����ӂ�����a_l.jpg");
	Fade("�G�d�u", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
The iron pipe out of its mouth is pointed right at us&. 
It's going to shoot the second shot&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0088]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/9000260a03">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_����03");
	CreateTextureEX("�G�d�u", 1100, -361, -268, "cg/ev/ev920�m�C�Y�ːi.jpg");
	Request("�G�d�u", Smoothing);
	Zoom("�G�d�u", 0, 2000, 2000, null, true);
	SetBlur("�G�d�u", true, 2, 200, 30, false);

	Fade("�G�d�u", 0, 1000, null, false);
	Move("�G�d�u", 200, 0, 0, Dxl1, false);
	Zoom("�G�d�u", 200, 1000, 1000, null, true);
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
I don't know what he was thinking&, but Noiz dashed up to 
it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/9000270a01">
"Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");//�������u�r�d�Fse�퓬_�Ō�_���؂荂01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("�G�d�u");
	DrawDelete("�G����", 150, 100, null, "slide_04_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Noiz takes out a cube from his side while running and 
pushes it into the dog's mouth&, trying to stop it&.

What is he doing&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ڂӂ��ƘU�����\����
	CreateSE("SE01","se�퓬_�Ռ�_������01");//�������u�r�d�Fse�퓬_�Ռ�_������01�v

	SetVolumeEX("@dm*", 500, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("�G��", 100);

	Wait(16);
	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	Zoom("�G��", 0, 1200, 1200, null, true);
	FadeFR2("�G��",0,500,150,0,0,50,null, false);
	Zoom("�G��", 200, 1000, 1000, null, false);
	Fade("�G��", 150, 0, null, false);
	FadeDelete("�G�t���b�V����", 100, null,true);

	SetVolumeEX("SE01", 100, 0, null);
	CreateSE("SE02","se�[��_���__����01");
	MusicStart("SE02",0,500,0,750,null,false);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
And suddenly&, smoke fumes out of the dog's mouth&.

{	CreateSE("SE03","se�l��_�Ռ�_�]�|02");
	MusicStart("SE03",0,600,0,1200,null,false);}
Its feet jerk and wobble until it falls to the ground&.

That just&.&.&.

Did the cube clog up the pipe and cause it to backfire?

Jeez&, it would've been dangerous if he didn't have that 
perfect timing&. That was seriously terrifying&, sheesh&.&.&.

He's as reckless as he ever was&.
But he did save us&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2300.nss"]

}
