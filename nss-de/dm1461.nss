//<continuation number="180">
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


scene dm1461.nss_MAIN
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
	#ev145�g���ϑz�̑��t=true;

	//�����惋�[�v����
	#iiyo1461_00=true;#iiyo1461_01=true;#iiyo1461_02=true;#iiyo1461_03=true;#iiyo1461_04=true;#iiyo1461_05=true;#iiyo1461_06=true;
	#iiyo1461_07=true;#iiyo1461_08=true;#iiyo1461_09=true;#iiyo1461_10=true;#iiyo1461_11=true;#iiyo1461_12=true;#iiyo1461_13=true;
	#iiyo1461_14=true;
	Save(0);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1462.nss";

}


scene dm1461.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm014",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�d�u100", 100, Center, Middle, "cg/ev/ev145�g���ϑz�̑��t.jpg");
	CreateTextureEX("�G�w�i�m�C�Y", 500, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");

	FadeDelete("��w�i", 0, null, true);

//���g�����[�g�̉񓚂Ɏ��s�����ꍇ


	CreateTextureEX("�G�d�u106", 106, -625, -608, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Zoom("�G�d�u106", 0, 1400, 1400, null, true);
	Request("�G�d�u106", Smoothing);

	CreateTextureEX("�G�d�u105", 105, -625, -608, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Zoom("�G�d�u105", 0, 1300, 1300, null, true);
	Request("�G�d�u105", Smoothing);

	CreateTextureEX("�G�d�u104", 104, -625, -608, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Zoom("�G�d�u104", 0, 1200, 1200, null, true);
	Request("�G�d�u104", Smoothing);

	CreateTextureEX("�G�d�u103", 103, -625, -608, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	Zoom("�G�d�u103", 0, 1100, 1100, null, true);
	Request("�G�d�u103", Smoothing);

	CreateTextureEX("�G�d�u102", 102, -625, -608, "cg/ev/l/ev145�g���ϑz�̑��t_l.jpg");
	CreateTextureEX("�G�d�u101", 101, -511, -357, "cg/ev/m/ev145�g���ϑz�̑��t_m.jpg");
	Move("�G�d�u101", 1000, -409, -357, Dxl1, false);
	Fade("�G�d�u101", 1000, 1000, null, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100010a01">
"&.&.&.That's fine&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100020a02">
"&.&.&.Is it?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100030a01">
"That's fine&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100040a02">
"No&, that's not it&.&.&. Aoba&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100050a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100060a02">
"No&.&.&. No! I&, about you&.&.&. But-"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100070a02">
"This isn't what I wanted!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100080a01">
"That's fine&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100090a02">
"Stop that&, Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_�m�C�Y01L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u102", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u102", 0, 1000,  null, false);
	Delete("�G�d�u101");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100100a01">
"That's fine&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100110a02">
"No&, no&.&.&.! Stop&.&.&.!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100120a01">
"That's fine&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100130a02">
"Please stop&.&.&.!!"

{

	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u103", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u103", 0, 1000,  null, false);
	Delete("�G�d�u102");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100140a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u104", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u104", 0, 1000,  null, false);
	Delete("�G�d�u103");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100150a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u105", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u105", 0, 1000,  null, false);
	Delete("�G�d�u104");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100160a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u106", 0, 1000,  null, false);
	Delete("�G�d�u105");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u106", 0, -605, -608, null, true);
	Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u106", 0, 1000,  null, false);
	Delete("�G�d�u105");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u106", 0, -605, -608, null, true);
	Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u106", 0, 1000,  null, false);
	Delete("�G�d�u105");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u106", 0, -605, -608, null, true);
	Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u106", 0, 1000,  null, false);
	Delete("�G�d�u105");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u106", 0, -605, -608, null, true);
	Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u106", 0, 1000,  null, false);
	Delete("�G�d�u105");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100170a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u106", 0, -605, -608, null, true);
	Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u106", 0, 1000,  null, false);
	Delete("�G�d�u105");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100170a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(50);

	Move("�G�d�u106", 0, -605, -608, null, true);
	Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
	Fade("�G�d�u106", 0, 1000,  null, false);
	Delete("�G�d�u105");

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/6100170a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSound("������", VOICE, "voice/dm14/6100170a01");
	SetAlias("������","������");
	Request("������",Stop);

	$iiyoloop=0;
	$iiyolooptime=500;
	while($iiyoloop<15){

		Fade("�G�w�i�m�C�Y", 0, 1000, null, true);
		SetVolumeEX("SE01", 0, 1000, null);
		Wait(50);
	
		Move("�G�d�u106", 0, -605, -608, null, true);
		Move("�G�d�u106", 1000, -525, -608, Dxl3, false);
		Fade("�G�d�u106", 0, 1000,  null, false);
		Delete("�G�d�u105");
	
		Fade("�G�w�i�m�C�Y", 0, 0, null, true);
	
		SetVolumeEX("SE01", 0, 1, null);

		Request("������",Stop);
		SetVolume("������", 0, 1000, NULL);
		Request("������",Play);
		$iiyokidoku=String("iiyo1461_%02d",$iiyoloop);
		if(VariableValue(#,$iiyokidoku)){SetMainReadTextFont();
		}else{SetMainTextFont();}
		CreateText("������text",20000,347,429,600,150,"That's fine&.");
		Request("������text", NoLog);
		VariableValue(#,$iiyokidoku,true);
		Wait($iiyolooptime);

		$iiyoloop++;
		$iiyolooptime=$iiyolooptime-($iiyoloop*10);
	}
	Save(0);

//	TextBoxDelete(0);
	Request("������",Stop);
	Delete("������text");
	Delete("������");
	SetVolumeEX("@dm*", 200, 0, null);

//�����o�F��ʈÓ]
	SetVolumeEX("SE01", 0, 1000, null);
	Fade("�G�w�i�m�C�Y", 0, 1000, null, true);

	Wait(2000);

	Fade("�G�w�i�m�C�Y", 0, 0, null, true);
	SetVolumeEX("SE01", 0, 0, null);

	FadeDelete("�G�d�u*", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/6100180a02">
"Ahhhhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

//�����t�@�C��["dm1462.nss"]

}
