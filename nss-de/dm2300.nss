//<continuation number="90">
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


scene dm2300.nss_MAIN
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
	#bg304081_5_���]�^���[���u����=true;
	#bg304051_5_���]�^���[�����G���A�L��01=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2300sl.nss";

}


scene dm2300.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304051_5_���]�^���[�����G���A�L��01");
	FadeBG(0,true);

//	OnBG(10,"bg304052_5_���]�^���[�����G���A�L��02");
//	FadeBG(0,true);

	SoundPlay("@dm007a",0,450,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.But it was nothing but a fleeting thought&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�����h�q01");
	CreateSE("SE02","se����_����_�����h�q01");

	CreateTextureEX("�G�d�u", 100, Center, Middle, "cg/ev/evf03�h�q�`�l�����ӂ�����b.jpg");

	MusicStart("SE01",0,600,0,1000,null,false);
	Wait(200);
	MusicStart("SE02",0,600,0,1200,null,false);
	Fade("�G�d�u", 500, 1000, null, true);

	Wait(500);
	SetVolumeEX("SE01", 500, 0, null);
	SetVolumeEX("SE02", 500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
At the back of the hallway&, more similar-looking dogs 
appeared&.

How many more of them are out there&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/0000010a03">
"Tch&, more of 'em? Hey&, can you run?"

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/0000020a01">
"Yeah&."

{		Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/0000030a03">
"Let's hide somewhere and let them go past&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("�G�d�u");

	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);

	DrawDelete("�G����", 200, 100, null, "slide_01_01_0", true);

	Wait(100);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(10,"bg304052_5_���]�^���[�����G���A�L��02");
	FadeBG(0,true);

	DrawDelete("�G����", 200, 100, null, "circle_01_00_1", true);
	SetVolumeEX("SE01", 500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I hold my aching side with a hand and run down the hallway with Noiz&.

On the way there was a door that was half made of glass&, 
and we looked inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
It seemed to be a room for storing equipment&.
There wasn't any sign of people&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);


	OnBG(10,"bg304081_5_���]�^���[���u����");

	CreateSE("SE03","se����_�h�A���]����_���J��01");
	MusicStart("SE03",0,700,0,1000,null,false);

	FadeBG(500,true);

	Wait(500);

	SetVolumeEX("SE01", 2000, 0, null);
	SetVolumeEX("SE02", 2000, 0, null);

	Wait(1000);

	CreateSE("SE04","se�l��_����_�ߎC��17");
	MusicStart("SE04",0,500,0,1000,null,false);
	CreateSE("SE05","se�l��_����_�ߎC��01");
	MusicStart("SE05",0,500,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
We wait for the danger to pass by hiding between the evenlylined shelves&.

We try to hold in our heaving breaths as quietly as 
possible&, listening for any signs of activity outside&. 

{	CreateSE("SE01","se����_����_�����h�q01");//�������u�r�d�Fse����_����_�����h�q01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@dm*", 1000, 0, null);
}
Engulfed in the tense atmosphere&, the only sounds I hear   are my own hearbeat and the footsteps of the dogs outside&.

{	SetVolumeEX("SE01", 500, 0, null);}
The footsteps reach the door and stop&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/0000040a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(2000);

	CreateSE("SE01","se����_����_�����h�q01");//�������u�r�d�Fse����_����_�����h�q01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 5000, 0, null);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
But after a while&, they pass and move farther away&.

&.&.&.What a relief&. They left&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/0000050a01">
"&.&.&.Haah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I breathe out a heavy sigh of relief&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/0000060a01">
"That was dangerous&."

{	Fw("fw�m�C�Y_�ʏ�_angry2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/0000070a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I look at Noiz and see him staring into empty space with a brooding expression&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/0000080a01">
"Noiz?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry3");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/0000090a03">
"&.&.&.I don't get it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Muttering like he was talking to himself&, Noiz looks at me&. 

His sharp eyes startle me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2300sl.nss"]

}
