//<continuation number="60">
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


scene dm0680.nss_MAIN
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
	#bg402041_1_��������֎~���H��ʘH=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0680sl.nss";

}


scene dm0680.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg402041_1_��������֎~���H��ʘH");
	FadeBG(0,true);

//���F�a�f�l�����p������
	SoundPlay("@dm009",0,450,true);

	CreateSE("SE01","se�l��_����_����03");
//	CreateSE("SE01","se����_�h�A�S_���J������01");//�������u�r�d�Fse����_�h�A�S_���J������01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("��w�i");

	CreateTextureSP("�G�w�i", 1000, Center, Middle, "cg/bg/bg402041_1_��������֎~���H��ʘH.jpg");
	CreateMaskSetSP("�G�}�X�N��", 500, 0, 0, "ci�c���C��_00_00", true, "ci�c���C��_00_00z");

	CreateTextureSP("�G�}�X�N��/�G�摜", 500, -723, -42, "cg/ev/m/evf02�����q�l�ÈłɘȂ�_m.jpg");

	//DrawDelete("�G�F��", 300, 100, null, "slide_01_00_0", true);
	FadeDelete("�G�F��", 300, null, true);

	Move("�G�}�X�N��/�G�摜", 700, -723, -72, Dxl1, false);
	DrawDelete("�G�w�i", 700, 100, null, "slide_06_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We jump into the passageway&, and three black-clothed men 
are standing there to block the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G�}�X�N��/�G�摜");
	Delete("�G�}�X�N��");
	Delete("�G�}�X�N���g");

	DrawDelete("�G��", 300, 100, null, "slide_06_00_1", true);

	St("MR",740, @0,@0,"st�~���N_�ʏ�_serious");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/8000010a05">
"Guess we'll have to deal with this&."

{
	St("ML",740, @0,@+30,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("ML",200,true);
//	ClearComicNext(20001,393,-22,26,"ev");
	ClearComicNext(20001,222,2,26,"st");
}
//�y�N���A�z�������F��
<voice name="�N���A" class="�N���A" src="voice/dm06/8000020a04">
"Eek!"

{
	ClearComicNexDelete();
	St("MR",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("MR",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/8000030a05">
"Hey&, go on ahead&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/8000040a01">
"Eh?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1200,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	BGPlainShake(50,300,-40,10,0,0,1000,null,false);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE03","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	BGPlainShake(50,300,-40,10,0,0,1000,null,false);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
Mink beats the black-clothed man who runs up to us with 
his fists&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @0,@0,"st�~���N_�ʏ�_shout");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/8000050a05">
"Hurry it up&. Gas mask guy&, you're over here&."

{
	St("ML",740, @0,@+30,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("ML",200,true);
	ClearComicNext(20001, 207, 40, 12,"st");
}
//�y�N���A�z�������F�K�[��
<voice name="�N���A" class="�N���A" src="voice/dm06/8000060a04">
"What!? I want to stay together with Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearComicNexDelete();

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Mink holds Clear by his neck and squeezes tight&. Mink's 
piercing eyes catch me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0680sl.nss"]

}
