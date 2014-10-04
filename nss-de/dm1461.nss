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
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev145紅雀妄想の蒼葉=true;

	//いいよループ既読
	#iiyo1461_00=true;#iiyo1461_01=true;#iiyo1461_02=true;#iiyo1461_03=true;#iiyo1461_04=true;#iiyo1461_05=true;#iiyo1461_06=true;
	#iiyo1461_07=true;#iiyo1461_08=true;#iiyo1461_09=true;#iiyo1461_10=true;#iiyo1461_11=true;#iiyo1461_12=true;#iiyo1461_13=true;
	#iiyo1461_14=true;
	Save(0);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1462.nss";

}


scene dm1461.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm014",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev145紅雀妄想の蒼葉.jpg");
	CreateTextureEX("絵背景ノイズ", 500, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");

	FadeDelete("上背景", 0, null, true);

//※紅雀ルートの回答に失敗した場合


	CreateTextureEX("絵ＥＶ106", 106, -625, -608, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Zoom("絵ＥＶ106", 0, 1400, 1400, null, true);
	Request("絵ＥＶ106", Smoothing);

	CreateTextureEX("絵ＥＶ105", 105, -625, -608, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Zoom("絵ＥＶ105", 0, 1300, 1300, null, true);
	Request("絵ＥＶ105", Smoothing);

	CreateTextureEX("絵ＥＶ104", 104, -625, -608, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Zoom("絵ＥＶ104", 0, 1200, 1200, null, true);
	Request("絵ＥＶ104", Smoothing);

	CreateTextureEX("絵ＥＶ103", 103, -625, -608, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Zoom("絵ＥＶ103", 0, 1100, 1100, null, true);
	Request("絵ＥＶ103", Smoothing);

	CreateTextureEX("絵ＥＶ102", 102, -625, -608, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	CreateTextureEX("絵ＥＶ101", 101, -511, -357, "cg/ev/m/ev145紅雀妄想の蒼葉_m.jpg");
	Move("絵ＥＶ101", 1000, -409, -357, Dxl1, false);
	Fade("絵ＥＶ101", 1000, 1000, null, true);
	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100010a01">
"&.&.&.That's fine&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100020a02">
"&.&.&.Is it?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100030a01">
"That's fine&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100040a02">
"No&, that's not it&.&.&. Aoba&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100050a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100060a02">
"No&.&.&. No! I&, about you&.&.&. But-"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100070a02">
"This isn't what I wanted!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100080a01">
"That's fine&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100090a02">
"Stop that&, Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_ノイズ01L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ102", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ102", 0, 1000,  null, false);
	Delete("絵ＥＶ101");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100100a01">
"That's fine&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100110a02">
"No&, no&.&.&.! Stop&.&.&.!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100120a01">
"That's fine&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100130a02">
"Please stop&.&.&.!!"

{

	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ103", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ103", 0, 1000,  null, false);
	Delete("絵ＥＶ102");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100140a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ104", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ104", 0, 1000,  null, false);
	Delete("絵ＥＶ103");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100150a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ105", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ105", 0, 1000,  null, false);
	Delete("絵ＥＶ104");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100160a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ106", 0, 1000,  null, false);
	Delete("絵ＥＶ105");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ106", 0, -605, -608, null, true);
	Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ106", 0, 1000,  null, false);
	Delete("絵ＥＶ105");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ106", 0, -605, -608, null, true);
	Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ106", 0, 1000,  null, false);
	Delete("絵ＥＶ105");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ106", 0, -605, -608, null, true);
	Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ106", 0, 1000,  null, false);
	Delete("絵ＥＶ105");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100170a01">
"That's fine&."


{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ106", 0, -605, -608, null, true);
	Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ106", 0, 1000,  null, false);
	Delete("絵ＥＶ105");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100170a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ106", 0, -605, -608, null, true);
	Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ106", 0, 1000,  null, false);
	Delete("絵ＥＶ105");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100170a01">
"That's fine&."

{
	SetVolumeEX("SE01", 0, 1000, null);

	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(50);

	Move("絵ＥＶ106", 0, -605, -608, null, true);
	Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
	Fade("絵ＥＶ106", 0, 1000,  null, false);
	Delete("絵ＥＶ105");

	Fade("絵背景ノイズ", 0, 0, null, true);

	SetVolumeEX("SE01", 0, 1, null);

}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6100170a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSound("いいよ", VOICE, "voice/dm14/6100170a01");
	SetAlias("いいよ","いいよ");
	Request("いいよ",Stop);

	$iiyoloop=0;
	$iiyolooptime=500;
	while($iiyoloop<15){

		Fade("絵背景ノイズ", 0, 1000, null, true);
		SetVolumeEX("SE01", 0, 1000, null);
		Wait(50);
	
		Move("絵ＥＶ106", 0, -605, -608, null, true);
		Move("絵ＥＶ106", 1000, -525, -608, Dxl3, false);
		Fade("絵ＥＶ106", 0, 1000,  null, false);
		Delete("絵ＥＶ105");
	
		Fade("絵背景ノイズ", 0, 0, null, true);
	
		SetVolumeEX("SE01", 0, 1, null);

		Request("いいよ",Stop);
		SetVolume("いいよ", 0, 1000, NULL);
		Request("いいよ",Play);
		$iiyokidoku=String("iiyo1461_%02d",$iiyoloop);
		if(VariableValue(#,$iiyokidoku)){SetMainReadTextFont();
		}else{SetMainTextFont();}
		CreateText("いいよtext",20000,347,429,600,150,"That's fine&.");
		Request("いいよtext", NoLog);
		VariableValue(#,$iiyokidoku,true);
		Wait($iiyolooptime);

		$iiyoloop++;
		$iiyolooptime=$iiyolooptime-($iiyoloop*10);
	}
	Save(0);

//	TextBoxDelete(0);
	Request("いいよ",Stop);
	Delete("いいよtext");
	Delete("いいよ");
	SetVolumeEX("@dm*", 200, 0, null);

//※演出：画面暗転
	SetVolumeEX("SE01", 0, 1000, null);
	Fade("絵背景ノイズ", 0, 1000, null, true);

	Wait(2000);

	Fade("絵背景ノイズ", 0, 0, null, true);
	SetVolumeEX("SE01", 0, 0, null);

	FadeDelete("絵ＥＶ*", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6100180a02">
"Ahhhhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

//※次ファイル["dm1462.nss"]

}
