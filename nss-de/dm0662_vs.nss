//<continuation number="40">
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


scene dm0662_vs.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0670_vs.nss";

}


scene dm0662_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg402031_1_��������֎~���H�ꕔ��01");
	FadeBG(0,true);

//���F�a�f�l�����p������
	SoundPlay("@dm009",0,450,true);

	FadeDelete("��w�i", 0, null, true);


//==============================================
//���u�g���ɋߕt���v��I�񂾏ꍇ
//==============================================

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/6200010a01">
"Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Rushing over&, I cover Koujaku's back&.

{
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G�d�u");
	FadeDelete("�G�F��", 70, null, true);

	Wait(200);

	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	Wait(200);

	CreateSE("SE03","se�l��_�Ռ�_�]�|01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(200);
	CreateSE("SE04","se�l��_�Ռ�_�]�|02");
	MusicStart("SE04",0,700,0,1000,null,false);
}
I haul a flying kick to the swarm of black-clothed men as  Koujaku takes out his sword&. Although&, he is only striking with the back side of it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�퓬����_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/6200020a02">
"Aoba&, aren't&.&.&.&. these guys with Dry Juice?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
After hearing Koujaku say that&, my doubts turn into 
certainty&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/6200030a01">
"Yeah&."

{	St("C",740, @0,@0,"bu�g��_�퓬����_normal");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/6200040a02">
"But&, then why are they doing this&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�����t�@�C��["dm0670_vs.nss"]

}
