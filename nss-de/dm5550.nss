//<continuation number="310">
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


scene dm5550.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	#ev026�@�����ed=true;
	#ev026�@�����ee=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5560.nss";

}


scene dm5550.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/l/bg304052_5_���]�^���[�����G���A�L��02_l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 800, 800, null, true);
	CreateTextureSP("�G�w�iEF", 100, Center, Middle, "cg/bg/bg304052_5_���]�^���[�����G���A�L��02.jpg");
	Zoom("�G�w�iEF", 0, 2030, 2030, null, true);
	DrawEffect("�G�w�iEF", 0, "Ripple", 200, 200, null);
	Fade("�G�w�iEF", 0, 1000, null, true);
	Fade("�G�w�i", 0, 500, null, true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("��w�i");
	Zoom("�G�w�i", 4500, 500, 500, Dxl1, false);
	Zoom("�G�w�iEF", 4500, 1000, 1000, Dxl1, false);
	FadeDelete("�G�F��", 2000, null, true);

	Wait(1000);
	Fade("�G�w�i", 1500, 1000, null, true);
	Delete("�G�w�iEF");
	Wait(1500);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
&.&.&.I've finally made it back to reality&.

When I look around&, it seems that everyone else had woken 
up too&.

This is definitely a different place from before&.

Noiz did say that he forced the field open&, so maybe the 
area has just changed&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000020a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Another feeling of pain and heaviness goes through my head&.

{
	CreateSE("SE01","se�l��_����_�ߎC��18");
	MusicStart("SE01",0,600,0,1500,null,false);
}
When I slowly sit up&, I notice something placed on my hand&.

A small&, blue paw&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/5000030a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.Ren&.

Ren&, in his dog form with his tongue sticking out like it 
always did&, looked up at me&.

When I saw him&, I almost felt like crying&.

&.&.&.I'm so glad&. He made it back&.

I'm so happy&.&.&.
I'm so&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_smile");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000040a01">
"Ren&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	SoundPlay("@dm013",0,450,true);

	CreateTextureEX("�G�d�u2", 1100, Center, Middle, "cg/ev/ev026�@�����ed.jpg");
	Fade("�G�d�u2", 1000, 1000, null, true);

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I pick up the blue ball of fluff and slowly bring it to my head&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("�G�d�u", 1100, Center, Middle, "cg/ev/ev026�@�����ee.jpg");
	Fade("�G�d�u", 700, 1000, null, true);
}
Ren bumps foreheads with me without any resistance&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000050a01">
"&.&.&.I'm so glad&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/5000060a06">
"I'm sorry&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000070a01">
"It's fine&, already&."

//�������u�����F���H�A�G�R�[���ȁv
//�����̒��ŋ����@�̐�
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/5000080a06">
"Aoba&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���l�^�̘@�����������
	CreateTextureEX("�G�d�u3", 1110, Center, Middle, "cg/ev/ev554�@�ڌ��A�b�v.jpg");
	Fade("�G�d�u3", 500, 850, null, true);

	FadeDelete("�G�d�u3", 1000, null, false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
&.&.&.I'm different from what I was before&.

Ren was originally part of me&.&.&. or rather&, a part of my 
actual self&, not just my body&.

But Ren let himself acknowledge that he was a different 
existance&.

It must be that my head feels a little empty after such an impossible feat&.

It feels a little weird&, like I'm a little heavier&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
But it's all right&.

I can deal with this since it means that Ren doesn't have 
to disappear&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	PrintGO("��w�i", 5000);
	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);
	FadeDelete("��w�i", 1000, null, true);

{	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/5000090a02">
"-Ouch! So I guess it went well?"

{	St("R",740, @50,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("R",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm55/5000100a04">
"Everyone has come back&. Master is all right as well&.
 That's amazing!"

{	St("L",740, @-50,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("L",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/5000110a03">
"It would've been dangerous if it lasted any longer&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000120a01">
"Everyone&.&.&. Thank you for coming here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/5000130a02">
"Don't say that&. That's kinda embarrassing&."

{	St("L",740, @-50,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("L",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/5000140a03">
"It wasn't really for you or anything&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm55/5000150a04">
"It's great that Ren-san is back&, too!"

{	Fw("fw���t_�ʏ�_smile2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000160a01">
"Yeah&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/5000170a06">
"I caused some trouble&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm55/5000180b16">
"You sure did&. I was so worried!"

{	Fw("fwAM�g��_�ʏ�_normal");}
//�y�g���z
<voice name="�g��" class="��" src="voice/dm55/5000190b12">
"It's a big thing to survive that bug&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
It's really great that we all came back safely&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000200a01">
"What about the guards and the Allmates?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",740, @-50,@0,"st�m�C�Y_�ʏ�_normal2");
	St("R",740, @50,@0,"st�~���N_�ʏ�_normal");
	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063a]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/5000210a03">
"They're around somewhere&. There are other floors&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry4");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/5000220a02">
"Toue's next&. That bastard&, we need to get to him quick&."

{	FwPro("fw���t_�ʏ�_worry",2000,"fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000230a01">
"Toue&.&.&. Wait&, what about the Old Resident District?
 Are they okay over there?"

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/5000240a02">
"Not right now&. It looks like they're having a mandatory
 broadcast of Toue's speech for the end of the event
 today&."

{	St("L",740, @-50,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("L",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/5000250a03">
"Something bad is happening down there&. Yesterday was the
 music&. This time&.&.&."

{	St("R",740, @50,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("R",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm55/5000260a05">
"It's lights and music so they can get all of them at
 once&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/5000270a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 400, 600, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
That equipment must be one of those things that imitate 
Sei's powers&.

My mood sinks when I remember what Virus and Trip told me&.

I have to stop Toue quickly&.

And&.&.&. I want to save Sei if I can&.

I'm here all because of Granny&, but Sei was always trapped by Toue&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�F��", 400, null, true);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0089]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/5000280a02">
"So&, where is he? Upstairs?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("R",740, @50,@0,"st�~���N_�ʏ�_serious");
	FadeSt("R",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm55/5000290a05">
"Toue's office should be on the highest floor&."

{	St("L",740, @-50,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("L",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/5000300a03">
"Idiots like him like tall places&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_think");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/5000310a02">
"So if we can make it there without any trouble&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	DeleteFw();
	DeleteAllSt(200,true);

//�����t�@�C��["dm5560.nss"]
}
