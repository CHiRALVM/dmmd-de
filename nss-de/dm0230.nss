//<continuation number="440">
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


scene dm0230.nss_MAIN
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

	#dm0230_Add1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0240.nss";

}


scene dm0230.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	CreateColorSP("�G�F��", 5000, "000000");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg104031_5_���t���.jpg");

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",1000,450,0,1000,null,true);

	Wait(1500);

	SetVolumeEX("SE*", 0, 0, null);

//�����o�F��ʓ]��
//�����i���Ƃ��������񂾂�傫���Ȃ��Ă���j

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����
	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Ouch&.
Something hurts&.

It feels like something sharp is poking me&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����
	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000010b16">
"Wake up&, sleepyhead! Hey&, come on!"

//{	Fw("fw���t_�ʏ�_pain");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000020a01">
"Tch&, ouch&.&.&."

{
//	DeleteFw();
	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000030b16">
"I'm telling you to wake up! I'll hit you&, moron!"

//{	FwPro("fw���t_�ʏ�_pain2",1200,"fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000040a01">
"&.&.&.Mmh&, that hurts!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 0, 15, 0, 0, 500, Dxl1, false);
	FadeDelete("�G�F��", 500, Dxl1, true);

	Wait(300);

	CreateSE("SE01","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE01",0,700,0,800,null,false);

//���x�b�h���琨���悭�N���遨�v�j���i��������̂悤�ȁj
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I jump up in defiance of my persistent attacker&, and the 
thing poking my face falls down&. I reflexively grab it 
with both hands&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G�}�X�N��", 2010);//�i�b�g���A�D��x
	CreateTextureSP("�G�}�X�N��/�G�摜", 1900, 275, -530, "cg/bg/l/bg104031_5_���t���_l.jpg");
	CreateTextureSP("�G�}�X�N��/�G���G", 2000, Center, Middle, "cg/fu/fuAM�x�j_�ʏ�_normal.png");
	CreateColorEX("�G�}�X�N��/�G�F��", 1950, "000000");
	Fade("�G�}�X�N��/�G�F��", 0, 300, null, true);

	SetShade("�G�}�X�N��/�G�摜", MEDIUM);


	FadeDelete("�G��", 100, null, false);

	OpenTateMask("�G�}�X�N��",200, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(500);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000050a01">
"Oh&, Beni&."

{	DeleteFw();}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000060b16">
"Aagh&, let go of me! How can you treat a guest this way!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Beni flaps his wings in my hand and gives me a sharp 
glare&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CloseTateMask("�G�}�X�N��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000070a01">
"Does that mean Koujaku's here?"

{
	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000080b16">
"Isn't that obvious!? Let me go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm001",0,450,true);

	CreatePlainSP("�G��", 5000);
	Delete("�G�w�i");
	Delete("�G�F��");
	Delete("�G����");

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I stand up from the bed with the shouting Beni in my 
hand&.

Huh? Where's Ren?

I look for him and see him lying in the corner of the bed 
in sleep mode&.

Oh yeah&, he said some data was damaged&. 
I have to do some maintenance on him later&.

But I want to eat something first&.

I feel a lot better because I slept for a while&.

The headache's gone now&, too&.

There's some pain in my joints&, but it's not so bad that 
I can't walk&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(500, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
When I step out of the room&, a delicious smell drifts in 
from downstairs&.

Granny's back&. She's started cooking a meal&.

When I look at my Coil&, I see that it's already time for 
dinner&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg104011_5_���t���");
	FadeBG(1000,true);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000090a01">
"Is it already this late?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000100b16">
"You almost didn't wake up&, and I got angry&. Do you finally get it now?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteFw();

	OnBG(10,"bg104021_5_���t��䏊");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
Ignoring Beni's complaints&, I head down the stairs and 
look at the kitchen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i100", 100, 565, -76, "cg/bg/m/bg104021_5_���t��䏊_m.jpg");
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_normal");
	FadeSt("C",0,true);
	Request("�G�w�i100", Smoothing);
	SetShade("�G�w�i100", MEDIUM);
	Zoom("�G�w�i100", 0, 2000, 2000, null, true);

	FadeDelete("�G��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Koujaku sits at the dining table&, and the room is filled 
with an appetizing smell&.

Granny is standing in the kitchen nearby&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
When Koujaku sees me&, he grins&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_smile2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000110a02">
"Yo&, morning there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000120a01">
"&.&.&.Morning&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_smile");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000130a02">
"Looking super cool as usual&, I see&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000140a01">
"&.&.&.No thanks to you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	DeleteAllSt(0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
A yawn leaks out against my will&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000150a01">
"Here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//���|�C�b�i�M���O��艉�o�j
	CreateSE("SE01","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateSE("SE01","se�l��_����_�@��02");
	MusicStart("SE01",0,700,0,1600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
I shoot Beni&, who I was still holding from earlier&, at 
Koujaku&. Koujaku catches him skillfully&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000160b16">
"I even went to the trouble of waking you up and you still
 treat me badly! Don't look down on me&, Aoba!"

{	Fw("fw���t_�ʏ�_cranky");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000170a01">
"Direct your complaints at your master&. Doesn't he make you run his errands?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000180a02">
"Can't help it&. You're a real grump when you've just woken
 up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000190a01">
"That's not true&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000200b03">
"Aoba&, if you're up&, help a little! The meal's ready&, so
 get chopsticks and tea!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000210a01">
"Okay&, okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm003",0,450,true);

	CreateTextureEX("�G�w�i100", 100, -953, -203, "cg/bg/l/bg104021_5_���t��䏊_l.jpg");
	Move("�G�w�i100", 500, -1023, -203, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Granny's yelling forces me to hurry to the shelf&. Koujaku 
listens in and laughs cheerfully&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_happy");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000220a02">
"No matter how many times I visit&, you never change&, Tae-
 san&. I feel relieved just hearing your energetic voice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000230a01">
"I dare you to be yelled at every day&. It's pretty hard&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000240a02">
"Ahahahaha&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
When I shrug my shoulders while putting the chopsticks 
on the table&, Koujaku laughs even more happily&.

{
	FadeDelete("�G�w�i100", 500, null, true);
}
I pour tea into three teacups as Granny arranges the 
plates containing the freshly-made dishes on the table&.

All the preparations for dinner are complete&, and I sit 
at the table with everyone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F���L�����������肢���܂�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
"Thank you for the food&."{WaitAddText2();}
<BR>

</PRE>
	SetText();
	AddText(1,""Thank you for the food&."","�^�G","dm02/3000250b03",true,true,1000);
	AddText(2,""Thank you for the food&."","���t","dm02/3000260a01",true,true,1000);
	AddText(3,""Thank you for the food&."","�g��","dm02/3000270a02",true,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

/*
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000250b03">
"Thank you for the food&."
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000260a01">
"Thank you for the food&."
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000270a02">
"Thank you for the food&."
*/

	CreateSE("SE01","se��_����_�H��01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Today's dinner is fish boiled with salt&, stir fried 
konbu&, and pork&.

I try the pork and find myself instantly impressed&.

Delicious&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
A meal after you've slept away your exhaustion is 
delicious&. Really delicious&.

As I realize this&, Koujaku watches Granny with a smile 
while chewing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000280a02">
"It's really good&. It's no surprise though&, seeing as
 Tae-san's cooking is absolutely the best&."

{	Fw("fw�^�G_�ʏ�_sigh");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000290b03">
"Hmph&. How can you say that when you decided to come over
 out of the blue?"

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000300a02">
"Didn't I tell Aoba I was coming?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
The blame is suddenly directed towards me&, and Koujaku 
stares at me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000310a01">
"Didn't you say you'd come 'in the near future'?"

{	Fw("fw�^�G_�ʏ�_normal2");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000320b03">
"And you kept sleeping like a log&. You wouldn't get up no
 matter how many times you were called&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000330a01">
"That was&.&.&. well&, I guess that's true&.&.&."

{	Fw("fw�g��_�ʏ�_normal");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000340a02">
"But I'm really thankful that you made a proper meal like
 this&."

{	Fw("fw�^�G_�ʏ�_shock");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000350b03">
"Don't misunderstand&. There was some food that was going to expire soon&, so this was a good chance to use them now&."

{	Fw("fw�g��_�ʏ�_cheese2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000360a02">
"That's why I love you&, Tae-san&."

{	Fw("fw�^�G_�ʏ�_shout");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000370b03">
"Just shut up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Granny snorts roughly and stuffs her mouth with konbu&. 
Koujaku watches her with a smile&.

For some reason&, Granny seems to really like Koujaku&.

Koujaku came to this island with his mother but it was 
actually more common for him to be alone&.

That's why he often hangs out with me&, and comes over to 
my house&. Of course&, he eats lots of Granny's home made 
cooking&, too&.

If I know Granny&, she's definitely thinking that she has 
a second grandchild now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000380b03">
"Are you staying for the night?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
Granny asks this while raising her eyebrows&. Koujaku 
stops his hand that was stuffing food into his mouth and 
nods without hesitation&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000390a02">
"That's what I had in mind&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000400b03">
"Really&, would it kill you to have some shame?"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000410a01">
"Well&, it's the same as always&. But I have work&, so even if you're sleeping I'll slap you awake&."

{	Fw("fw�g��_�ʏ�_smile");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000420a02">
"But isn't it the opposite? I've always woken you up gently even though you won't almost wake up at all&."

{	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000430b16">
"Ain't that right?"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000440a01">
"&.&.&.You guys&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
After showing an irritatingly nice smile&, Koujaku begins 
to eat his meal from the bowl again&.

Then we exchanged silly conversations between the three of 
us&, and&, through our lovely dinner&, time passed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//�����t�@�C��["dm0240.nss"]

}
