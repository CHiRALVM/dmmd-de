//<continuation number="80">
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


scene dm0162.nss_MAIN
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
	$GameName = "dm0170.nss";

}


scene dm0162.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101031_1_���Z����ʂ藠�H�n�g���J");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);


//==============================================
//���u�S�O����v��I�񂾏ꍇ
//==============================================

	SetVolumeEX("@dm*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.Hoer auf&.

Meine Reaktion kommt zu spaet um es zu vermeiden&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6200010a01">
"&.&.&.Gh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Nein&, fass mich nicht an&.&.&.!

Sie bewegt ihren Arm auf mich zu kurz bevor ich sie reflexartig abwehre&.

{
	SoundPlay("@dm012",0,450,true);

	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6200020a02">
"Wie grausam&. Selbst wenn ich neben dir stehe&, versuchst du einen anderen
 Mann zu verfuehren?"

{
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1100,null,false);

	DeleteAllSt(200,true);
}
Koujaku's grosse Hand faengt die Hand der Frau ab und drueckt sie zaertlich
gegen seine Wange&. Die Frau wird sofort knallrot&.

{
	St("C",740, @0,@0,"st�g��_�ʏ�_smile");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6200030a02">
"Hast du mich satt?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6200040e50">
"Nein- nein&, Ich koennte nie&.&.&."

{	Fw("fwm�M����A_�ʏ�_normal");}
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6200050e49">
"Das stimmt! Unhoeflich&, so direkt vor Koujaku-san! Aber ich bin auch neidisch!"

{	Fw("fwm�M����B_�ʏ�_normal");}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6200060e50">
"Es tut mir Leid&, Ich wollte nicht&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6200070a02">
"Entschuldige dich nicht&. Ich bin nicht wuetend oder so&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Kojaku laesst die Hand der Frau laechelnd&.

Ich fuehle mich erleichtert und gegenueber Koujaku&.

Er hat mich gerade.&.&. gerettet&.

Er weiss&, dass ich es hasse wenn andere Leute mein Haar beruehren&.

Wenn er solche Dinge tut&, kann ich ihn einfach nicht hassen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6200080a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0170.nss"]

}
