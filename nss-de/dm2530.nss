//<continuation number="350">
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


scene dm2530.nss_MAIN
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
	#ev253���t�A�m�C�Y�����P�l������=true;
	#bg304022_5_���]�^���[�O�ʂ����=true;
	#bg304031_5_���]�^���[�L��01����=true;
	#bg304032_5_���]�^���[�L��02=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2540.nss";

}


scene dm2530.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg304032_5_���]�^���[�L��02");
	FadeBG(0,true);

	CreateSE("SE01","se����_�h�A���]����_���J��01");//�������u�r�d�Fse����_�h�A���]����_���J��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXmul("�G�F��", 1000, RED);
	Fade("�G�F��", 300, 600, null, true);


	CreateSE("SE11","se����_���]�^���[_�n��01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	CreateSE("SE22","se����_���]�^���[_�A���[��01L");
	MusicStart("SE22",0,300,0,1000,null,true);
	CreateVOICE("��������","dm25/1000010e14");
	MusicStart("��������",0,700,0,1000,null,true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304032_5_���]�^���[�L��02",400,2);

	Delete("��w�i");

	DrawDelete("�G�F��", 1000, 100, null, "slide_06_00_0", true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
When the door opens&, I can see the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE��01","se�l��_����_����03");
	MusicStart("SE��01",0,700,0,1000,null,false);

	CreateSE("SE��02","se�l��_����_����03");
	MusicStart("SE��02",0,700,0,800,null,false);

	CreateColorSP("�G����", 5000, "BLACK");

	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304031_5_���]�^���[�L��01",400,2);


	OnBG(10,"bg304031_5_���]�^���[�L��01");
	FadeBG(0,true);

	DrawDelete("�G����", 250, 100, null, "slide_01_01_0", true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The exit is just a bit farther away&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("��������", 5000, 0, null);
	SetVolumeEX("SE22", 5000, 0, null);

	SetVolumeEX("SE��*", 1000, 0, null);

	CreateSE("SE01","se����_���]�^���[_����01");//�������u�r�d�Fse����_���]�^���[_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(500,300,0,100,0,0,1000,null,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000010a01">
"!?"

{
	Fw("fw�m�C�Y_�ʏ�_shock");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000020a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se����_���]�^���[_�n����01");//�������u�r�d�Fse����_���]�^���[_�n����01�v
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 500, -328, -105, "cg/bg/l/bg304031_5_���]�^���[�L��01_l.jpg");
	Shake_LoopFree("@�G�w�i100",0,5,0,0,1000);
	Move("�G�w�i100", 250, -328, -23, Dxl1, false);
	Fade("�G�w�i100", 250, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I ran along the cracks in the wall&, my feet shaking while  the building violently roared&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ǂƓV�䂪����ɕ���Ă���
	CreateSE("SE01","se����_���]�^���[_�n����02");//�������u�r�d�Fse����_���]�^���[_�n����02�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE03","se�l��_����_�ߎC��25");
	MusicStart("SE03",0,600,0,800,null,false);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


	OnBG(10,"bg304031_5_���]�^���[�L��01����");
	FadeBG(0,true);

	dm1500ShakeLoop("�G�V�F�C�N","bg304031_5_���]�^���[�L��01����",400,2);


	Delete("�G�w�i100");
	CreateTextureSP("�G�w�i101", 101, -328, -23, "cg/bg/l/bg304031_5_���]�^���[�L��01����_l.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
It's falling apart&.&.&.!

{
	CreateSE("SE04","se�l��_�Ռ�_�]�|01");
	MusicStart("SE04",0,700,0,1000,null,false);
	CreateSE("SE05","se�l��_�Ռ�_�]�|02");
	MusicStart("SE05",0,700,0,1000,null,false);
}
I was covering my face with both arms&, but the tremors 
pushed me down to the ground&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000030a01">
"&.&.&.Hgh&, hck&, Noiz&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G����", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I cough while trying to both inhale the air that's mixed 
with dust and dirt&, and kick away all the rubble in my way 
at the same time&.

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,800,null,false);
}
&.&.&.And then something soft touched my head&.

I touch it with my hand and feel a shock&.

This sensation&, is it possibly&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i101", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000040a01">
"&.&.&.Noiz!?"

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE01", 1500, 0, null);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000050a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Noiz&.&.&. is on his hands and knees trying to protect me&.

There's a pile of rubble on his back&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000051a03">
"&.&.&.&.&.!"

{
	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,1200,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");
}
His face warps in pain&, and he falls down to the ground 
while breathing frantically&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000060a01">
"Noiz&, hey! Are you okay!?"

{
	Fw("fw�m�C�Y_�ʏ�_pain");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000070a03">
"&.&.&.Ow&.&.&. You're- hurt-"

{
	Fw("fw���t_�ʏ�_shout");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000080a01">
"Nevermind me&, what about you!?"

{
	Fw("fw�m�C�Y_�ʏ�_pride2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000090a03">
"Haha&.&.&.Honestly&, I can't really&.&.&.tell where the pain is&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE01", 1500, 0, null);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 3, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Noiz's body slants downward&. Both his back and his hair arecovered in dust&, and his clothes are completely torn apart&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000100a01">
"Hey&.&.&. Are you okay? Don't you even move&.&.&."

{
	Fw("fw�m�C�Y_�ʏ�_pain");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000110a03">
"Now&.&.&. I think something just broke&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
Noiz pushes out one of his shaking arms&.

His wrists are unnaturally bent and twisted&.

When I look more carefully&, I see his ankle's twisted into an unnatural shape&.

This&.&.&. would hurt to a normal human&, but for Noiz who had only just regained his sense of pain&, it must be absolute  hell&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_pride2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000120a03">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000130a01">
"Don't try to move! Shit&, we have get out somehow&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_���]�^���[_����01");//�������u�r�d�Fse����_���]�^���[_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(5000,300,0,60,0,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Another tremor shakes the tower&.

We'll be crushed if we don't get out of here soon&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000140a03">
"&.&.&.Go on alone&."

{
	Fw("fw���t_�ʏ�_shout");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000150a01">
"Fuck no&, idiot!"

{
	Fw("fw�m�C�Y_�ʏ�_pride2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000160a03">
"Haha&.&.&. You even said it yourself earlier&.&.&. Besides&, I
 really can't move&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��14");
	MusicStart("SE02",0,600,0,800,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000170a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
&.&.My burn still hurts&, but it's nothing compared to what 
Noiz is experiencing right now&.

And all the rubble that hit me just left me with scratches&.
My headaches are gone for the most part&, and I can move 
just fine&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
&.&.&.All right&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm016",0,450,true);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000180a01">
"This may hurt a little&, but put up with it&."

{
	Fw("fw�m�C�Y_�ʏ�_shock");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000190a03">
"!? What&.&.&. Hey!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01");//�������u�r�d�Fse�l��_����_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I put my hands under Noiz's knees and shoulders&, then pull 
him up with care&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i200", 200, -241, -286, "cg/bg/m/bg304031_5_���]�^���[�L��01����_m.jpg");
	Shake_LoopFree("@�G�w�i200",0,5,0,0,1000);
	Move("�G�w�i200", 500, -241, -113, Dxl1, false);
	Fade("�G�w�i200", 500, 1000, null, true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000200a01">
"Okay&.&.&.!"

{
	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	Fw("fw�m�C�Y_�ʏ�_shout");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000210a03">
"What're you doing&, put me down!"

{
	Fw("fw���t_�ʏ�_hard2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000220a01">
"No&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
He's a slim guy&, but he's still pretty heavy&.

But I don't care about that right now&.
I can't even let myself think about it&.

Anyway&, we have to get the hell out of here&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000230a01">
"Okay&.&.&. Let's go! Hold on!"

{
	Fw("fw�m�C�Y_�ʏ�_shock");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000240a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���]�^���[_�n��01L");
	MusicStart("SE01",2000,700,0,1000,null,true);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureSP("�G�d�u100", 1000, -718, -370, "cg/ev/l/ev253���t�A�m�C�Y�����P�l������_l.jpg");
	Shake_LoopFree("@�G�d�u100",0,2,0,0,1000);
	Move("�G�d�u100", 500, -485, -571, Dxl3, false);
	FadeDelete("�G�w�i200", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
As the virbrations began to grow stronger&, I ran while 
holding Noiz with all I had&.

Avoiding the collapsing walls as much as I could&, I kicked away all of the rubble in my way&.

I can see the elevator door now&.

Just&.&.&. a little more!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000250a03">
"&.&.&.Heh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000260a01">
"What? Does it hurt somewhere? Just wait a little longer&.&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000270a03">
"That's not it&.&.&. Haha!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000280a01">
"&.&.&.Why are you laughing&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�d�u101", 1001, Center, Middle, "cg/ev/ev253���t�A�m�C�Y�����P�l������.jpg");
	Delete("�G�d�u100");

	CreatePlainSP("�G�h��", 1005);
	Shake_LoopFree("@�G�h��",0,1,0,0,500);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000290a03">
"Just look at the situation we're in&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000300a01">
"I'm on the brink of death here!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/3000310a03">
"Sorry&.&.&. thanks&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000320a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
I felt my energy come back after Noiz murmured those words&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se����_���]�^���[_����01");//�������u�r�d�Fse����_���]�^���[_����01�v
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateTextureSP("�G�w�i100", 100, -977, 0, "cg/bg/l/bg304031_5_���]�^���[�L��01����_l.jpg");
	dm1500ShakeLoop("�G�V�F�C�N","l/bg304031_5_���]�^���[�L��01����_l",400,2);
	Delete("�G�h��");
	FadeDelete("�G�d�u101", 200, null, true);

//	CreatePlainSP("�G��", 990);
//	Shake("�G��", 300, 0, 60, 0, 0, 500, null, true);
//	Delete("�G��");

	BGPlainShake(500,300,0,60,0,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000330a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
Right before we reached the entrance&, a ceiling light fell down&.

I barely avoided it&, but it was blocking the way&.

I somehow maneuver around it and head for the door&.

The exit&.&.&. is right in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�d�u102", 1003, -472, -50, "cg/ev/l/ev253���t�A�m�C�Y�����P�l������_l.jpg");
	CreateTextureSP("�G�d�u102��", 1002, -472, -50, "cg/ev/l/ev253���t�A�m�C�Y�����P�l������_l.jpg");

	Shake_LoopFree("@�G�d�u102",0,3,0,0,1000);
	Move("�G�d�u102*", 500, -272, 0, Dxl3, false);
	FadeDelete("�G��", 500, null, true);

	Delete("�G�w�i100");
	Delete("�G�V�F�C�N*");
	Delete("�Gdm*");
	Delete("�G�F*");
	Shake_LoopDelete();

	SetVolumeEX("@dm016", 3000, 600, null);

//	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000340a01">
"Urrryahhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("����*", 2000, 0, null);

	CreateSE("SE05","se����_���]�^���[_�n����01");//�������u�r�d�Fse����_���]�^���[_�n����01�v
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateSE("SE06","se����_���]�^���[_�n����02");//�������u�r�d�Fse����_���]�^���[_�n����02�v
	MusicStart("SE06",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);
	Delete("�G�d�u*");
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
I passed through the nearly destroyed door and made it 
outside the tower&.

I kept running full speed for some distance&, and fell to 
my knees when I had finally reached a safe place&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 1000, 0, null);

	OnBG(10,"bg304022_5_���]�^���[�O�ʂ����");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i50", 50, Center, Middle, "cg/bg/bg304022_5_���]�^���[�O�ʂ����.jpg");

	CreateTextureSP("�G�w�i100", 100, Center, Middle, "cg/bg/l/bg304022_5_���]�^���[�O�ʂ����_l.jpg");
	Move("�G�w�i100", 1000, @0, @-100, Dxl1, false);

	CreateSE("SE12","se����_���]�^���[_�n��01L");//�������u�r�d�Fse����_���]�^���[_�n����01�v
	MusicStart("SE12",0,450,0,1000,null,true);


	CreateMovieSPsub("���P", 500, 0, 0, true, true, "dx/mvk100&.ngs");
	Zoom("���P", 0, 5000, 5000, null, true);

	Shake_Loop("@�G�w�i100","shake01");
	MoveFTP1("@�G�w�i100",3500,10,2);

	Shake_LoopFree("@�G�w�i50",0,7,0,0,1000);

	FadeDelete("�G�F��", 1000, null, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1000);

//	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/3000350a01">
"Ha&, haa&, haa&, ha&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
I put down Noiz&, fell to the ground&, and then looked up&.

My lungs are blasted&.&.&.

I can barely take in air as it is&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE11","se����_���]�^���[_�|��01");//�������u�r�d�Fse����_���]�^���[_�|��01�v
	MusicStart("SE11",0,700,0,1000,null,true);

	Move("�G�w�i100", 1000, @0, @200, Dxl3, false);
	FadeDelete("�G�w�i100", 1000, null, true);

	Wait(500);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	Delete("��*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0116]
Immediately after we got out of the tower&, I could hear it tumbling down&, down&.&.&.

{
	SetVolumeEX("SE*", 5000, 300, null);
}
Shrieks and screams rose up from the gathered onlookers 
who were running away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("SE*", 5000, 0, null);
	SetVolumeEX("@dm*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
Now&.&.&.
It's really over&.

While we laid there&, we watched the tower fall to pieces&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);
	Wait(6000);

//�����t�@�C��["dm2540.nss"]

}
