//<continuation number="0">
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


scene dm2430scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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

	//�����o��̏���������
	$SYSTEM_menu_lock=false;
	SetPan("@dm001*", 0, 0, null);
	SetFrequency("@dm001*", 0, 1000, null);

	//�������t���O�𗧂Ă�
	#dm2430scr_First=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2440sl00.nss";

}


scene dm2430scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 1000, "000000");
	CreateTextureEX("�G�ϑz���E", 100, -511, -520, "cg/bg/m/bg101011_1_���Z����ʂ�\_m.jpg");
	Fade("�G�ϑz���E", 0, 0, null, true);

//�������u���F�E�N���b�N�Ƃ��ł����Ⴄ�Ƌ����߂Ȃ̂ŕ���A��񌩂��畕�󂵂Ȃ��v
	if(#dm2430scr_First==true){
	}else{
	$SYSTEM_menu_lock=true;
	}

	FadeDelete("��w�i", 0, null, true);

//�����E�����ɂ���Ƙc�݁A�m�C�Y�̕ʂ̖ϑz���E�֓˓�
//�����o�i�\�ł���΁j�F
//�v���`�i�W�F�C���������苌�Z���悾�����荡�܂ł̔w�i���o�Ă���̂ł����A
//�݂�ȐF�����Ȃ肨���������ƂɂȂ��Ă܂��B
//�����ɏo�Ă��闧���G���H�ꂳ�񂾂����胈�V�G��������l�X�Ȑl���o�Ă��܂����A
//�݂�Ȕ��̐F���΂�������������肨�������ł��B
//�܂��A�����ŃO�`���O�`���ɂ���Ă�L������������B
//���t���ǂ�������������Ԃł������\�������Ƃ����ł��B
//�y������������Ă��銴���Ńo�[�b�Ɣw�i�Ƃ���������ւ�藧������\�������Ƃ����ł��B
//�Ō�Ƀm�C�Y�̂����\���i��������������Ȃ��Ă銴���Łj
//�a�f�l�����A���������ł��B���Ȃ�o�O���ۂ����͋C�ł��B
//�e�L�X�g�́u�������ă������G���v�Ƃ��K���ɗ�����Η��������ł��B

	//CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E01.jpg");
	//Fade("�G�ϑz���E", 0, 1000, null, true);

	Wait(2000);

	CreateColorSP("�G�F��", 5000, "FFFFFF");
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(1000);

	CreateSE("SE01","se�[��_���__�����g01L");
	MusicStart("SE01",0,700,0,300,null,true);

	Wait(3000);

	CreateColorEX("�G�F��", 4000, "000000");
	DrawTransition("�G�F��", 0, 0, 500, 10, null, "cg/data/mosaic_01_00_0.png", true);

	SetVolumeEX("SE*", 100, 10, null);

	CreateTextureEX("�G�U�薼", 1110, Center, Middle, "cg/sys/title/Nitro+CHiRAL-logo.jpg");
	Fade("�G�U�薼", 2000, 1000, null, true);

	WaitKey(2000);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 0, 0, null, true);

	CreatePlainEX("�G��", 1900);
	Rotate("�G��", 0, @0, 180, @0, null,true);

	Fade("�G��", 0, 1000, null, true);
	DrawTransition("�G��", 0, 0, 200, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Wait(2000);

	Fade("�G��", 0, 0, null, true);
	Wait(100);
	Fade("�G��", 1000, 0, null, true);
	Wait(50);
	DrawTransition("�G��", 0, 0, 500, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("�G��", 0, 1000, null, true);

	Wait(500);

	Fade("�G�F��", 0, 1000, null, true);
	Fade("�G��", 0, 0, null, true);
	Wait(30);
	Fade("�G�F��", 0, 0, null, true);

	Wait(100);

	Fade("�G�U�薼", 0, 0, null, true);

	Wait(1000);

	SetVolumeEX("SE*", 0, 700, null);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 0, 0, null, true);
	SetVolumeEX("SE*", 100, 10, null);

	Wait(2000);

	DrawTransition("�G�U�薼", 0, 0, 1000, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("�G�U�薼", 2000, 1000, null, true);



	DrawTransition("�G�U�薼", 0, 0, 250, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("�G�ϑz���E", 0, 1000, null, true);
	Wait(30);
	Fade("�G�ϑz���E", 70, 0, null, true);

	Fade("�G�U�薼", 0, 0, null, true);

	DrawTransition("�G�ϑz���E", 0, 0, 750, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("�G�ϑz���E", 0, 1000, null, true);
	Wait(30);
	Fade("�G�ϑz���E", 70, 0, null, true);

	Wait(2000);

	DrawTransition("�G�ϑz���E", 0, 0, 1000, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("�G�ϑz���E", 2000, 10000, null, true);


	CreateSE("SE01","se��_����_���l������ʂ�01L");
	MusicStart("SE01",1000,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//Nearly halfway, there are NO EXTRA LINES after lines. Keep them in.
//This is the freaky Noiz scene with almost all repeated lines. May need to check all of these for consistency
<PRE @box0>
[text0010]
The best way to travel around here is by foot&.
It's what everyone does&.

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE*", 3000, 450, null);
	SoundPlay("@dm001",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011a]
The transportation system in the Old Resident District is 
pretty bad&.

There's a big street running through the center of the 
city&, and sometimes there may be a bus or a train&, or 
even a taxi&.

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011b]
The transportation system in the Old Resident District is 
pretty bad&.

There's a big street running through the center of the 
city&, and sometimes there may be a bus or a train&, or 
even a taxi&.

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	CreateTextureEX("�G�ϑz���E�^", 2100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E01.jpg");
	Zoom("�G�ϑz���E�^", 0, 1500, 1500, null, true);

	DrawTransition("�G�ϑz���E�^", 0, 0, 500, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("�G�ϑz���E�^", 0, 1000, null, true);
	SetPan("@dm001*", 0, -500, null);
	Wait(30);
	SetPan("@dm001*", 0, 0, null);
	Fade("�G�ϑz���E�^", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011c]
But they also can be cancelled or delayed without notice&, 
so they're not really reliable&.

The roads might be blocked at any time too&, so nobody 
trusts public transportation&.

Even now there are hardly any cars on the street&. There's 
only one taxi waiting in vain and some junked cars parked 
by the roadside&.

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetFrequency("@dm001*", 0, 200, null);
	Zoom("�G�ϑz���E�^", 0, 1000, 1000, null, true);
	Fade("�G�ϑz���E�^", 0, 1000, null, true);
	Wait(30);
	DrawTransition("�G�ϑz���E�^", 0, 0, 750, 10, null, "cg/data/mosaic_01_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
The sidewalk is filled with people coming and going&.
{
	SetVolumeEX("@dm*", 0, 0, null);
	SetFrequency("@dm001*", 0, 1000, null);
	SetVolumeEX("SE*", 150, 0, null);
	DrawTransition("�G�ϑz���E�^", 0, 750, 1000, 100, null, "cg/data/mosaic_01_00_0.png", true);
}
The most reliable thing you could have were your own legs&.

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Proc_dm2430scr_02();
	PrintGO("��w�i", 5000);
	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E02.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);
	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
"Thief!"

"What are you doing in someone else's room!?"

"Welcome back&."

"Wha&.&.&.!? Who are you? Why are you in my room&.&.&.?"

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Proc_dm2430scr_01();
	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E03.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Granny drives me off and I return to the table with the doughnuts&. Then&, I fill everyone's teacups and return to my own seat&. After a while&, Granny comes to sit down too&. "When people are full&, their anger will naturally subside&. Eat already&." "So these are for us?" �������������������B�^�G�������̃h�[�i�c�͂����炓�G�ʂȂ񂾂����G�ȁv�u�������瑁���������������v�k�����̃h�[�i���ڂ������������m�������g���������񂍂��S�֎肂�����������B�j������������������N�͂��܂������΁G�����񂈁G���G���΁G�����������D�������������������������G��

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E04.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
�u���@�O�c�c�@�@�@�@�N�@�[���s�@�@�@�@�@�@�@�@�@�@�@�@�@���@�@�@�@�@�@�Ȃ����@�̎q�@�@�@�@�ɉ��@�@�@�@����ā@��@���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��v

�u�@�@���@�@�@�@�@�@�@���@�@�@�@�v

�u�@�@�@���@���ā@�@���@���Ȃ�@�@�@��Ɂ@���@����@�@�@�@�@�@�āc�@�c�@�@�����@���@�����@�@�@�@�@�@�����@��A�@�@���@�@�@�@�@�ʁ@�@�@�@�@�v

�u�ʂɁ@�@�@�@�@�@�ρ@�ȁ@���@�@�@�@�@�Ɓ@���@�@�@��@�@�ȁ@���@�@���@�@�@�@��v


</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E05.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
��


��


���@�@�@���@�āA�@�@�@�@�@�@�H


�@�n�@�@�@�́@��
�@
�@
�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�p�����@
�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@
�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@���@�@�@�@����
�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�ƌ���n�@�@�@�߁@�@�@�@�@�@���B

</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E06.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

	CreateSE("SE01","se����_�d�b_�镽�}01L");
	MusicStart("SE01",0,1500,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
"Aren't you 'Ruff Rabbit'? Mujina's Rhymer team? Looks like you made it all the way over here&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
�u���C���̗\�z���Ƃ�����Ă�炵�����A���񂓂����Ƃł񂌁G�݂����G�����҂��Ŋ삌��������ˁ[��v
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
�u�������v
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

<PRE @box0>
[text0063]
�u���������{�����������񁗁������������������������@�@�@�@�������������������v
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E07.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

	CreateSE("SE01","se����_�d�b_�؂�镽�}");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
"Isn't Dry Juice the largest Rib team?"
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071a]
"Isn't Dry Juice the largest Rib team?"
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071b]
"Isn't Dry Juice the largest Rib team?"
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071c]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071d]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071e]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071f]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071g]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071h]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E08.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//������������������������������������������������
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
"Both of you&, shut up&.""Both of you&, shut up&.""Both of you&, shut up&."
"Both of you&, shut up&.""Both of you&, shut up&."
"Both of you&, shut up&.""Both of you&, shut up&.""Both of you&, shut up&."<k><?>
shutupshutupshutupshutupshutup
shutupshutupshutup<k><?>
����������������������������������������������������������


</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E09.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Clinging to the walls&, I can hear the faint sound of peopleinside&.
�@
�@
�@
�@�N���A


��




������

�@
�ʂ肾
�B


�l��


�C
����

���C
�@
���A�����B





�@
����
��
��������


�@
�@
�@
��


</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E10.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
�@�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v�u�K���������G�ꂐ�G���D��v�@h�Ctb���삐�v


</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E11.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
AAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH


</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E14.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
"If you can't stand it that much&, then hit me&."


�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�u�����ǂ����Ă��������G�Ȃ�A���R���C���v





�u�����ǂ���
�����ӂ����΁B�G�Ȃ悑����p�@�@��
���@�@�@�@�΁v


</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureSP("�G�ϑz���E", 100, Center, Middle, "cg/ef/efbg�m�C�Y�ϑz���E15.jpg");
	Fade("�G�ϑz���E", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������



��������������
�@�@�@�@�@�@�@�@�@�@�@�@��������
�@�@�@�@�@�@�@�@�@�@�@�B

�@�@�@�@�@�@�@���@���@�@�@�@�@�@�@�@�@�������@�@�@�@����
�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�������@�@�@��
��

��


</PRE>
	SetText();
	TypeBeginNL(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


//�����t�@�C��["dm2440sl00.nss"]

	SetVolumeEX("@dm*", 0, 0, null);
	ClearFadeAll(0, true);

}