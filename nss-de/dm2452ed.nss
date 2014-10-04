//<continuation number="150">
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


scene dm2452ed.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#ev245ノイズBADＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//★エンドロール
	PreSetRoll(2);
	TheEND(2);

#BDED2=1;//ノイズバッドエンドフラグ取得

}


scene dm2452ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//cono「演出：BGM後ほど調整」
//	SoundPlay("@dm017",0,450,true);

	PrintBG("上背景", 30000);

//	OnBG(10,"bg101011_1_旧住民区通り表");
//	FadeBG(0,true);

	CreateColorSP("絵色黒", 5000, "000000");

	CreateTextureEX("絵ＥＶ103", 103, Center, Middle, "cg/ev/ev245ノイズBADＥＤ.jpg");
	SetBlur("絵ＥＶ103", true, 1, 500, 200, false);
	CreateTextureEX("絵ＥＶ102", 102, -320, -292, "cg/ev/l/ev245ノイズBADＥＤ_l.jpg");
	SetBlur("絵ＥＶ102", true, 1, 500, 200, false);
	CreateTextureEX("絵ＥＶ101", 101, -1019, -677, "cg/ev/l/ev245ノイズBADＥＤ_l.jpg");
	SetBlur("絵ＥＶ101", true, 1, 500, 200, false);

	CreateTextureSP("絵ＥＶ100", 100, 950, 400, "cg/ev/l/ev245ノイズBADＥＤ_l.jpg");
	Zoom("絵ＥＶ100", 0, 2000, 2000, null, true);
	Request("絵ＥＶ100", Smoothing);
	SetBlur("絵ＥＶ100", true, 3, 200, 200, false);
	MoveFTP1("@絵ＥＶ100",5000,5,10);


	//cono「ＳＥ：ピチャン、ピチャンと血液が垂れる音敷く？」
	CreateSE("SE01","se擬音_水_はねる01");
	MusicStart("SE01",3000,700,0,500,null,true);
	CreateSE("SE01b","se擬音_水_はねる01");
	MusicStart("SE01b",3000,700,0,733,null,true);

	CreateSE("SE02","se人体_心臓_鼓動01L");
	MusicStart("SE02",3000,400,0,1000,null,true);


	Wait(3000);

	Delete("上背景");

	DrawDelete("絵色黒", 5000, 100, Dxl1, "effect_01_00_0", true);

//※演出：時間経過

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/5200010a01">
"&.&.&.&.&.!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200020a03">
"&.&.&.&.&."

The choking&, pungent smell of blood is present in the air&.

When I try to move my streched-out body&, I hear the sound  of puddles of blood dripping onto the floor&.

I have absolutely no idea where I am right now&.

But I'm probably still in Noiz's head&.

In that small room with nothing but Noiz lying bound in 
chains&.

Now I'll be in here&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 300, null);

	Wait(500);



	Move("絵ＥＶ101", 0, -952, -677, Dxl1, true);
	MoveFTP2("@絵ＥＶ101",5000,5,4);
	Fade("絵ＥＶ101", 1000, 1000, null, true);
	MoveFTP1stop();
	Delete("絵ＥＶ100");


//	SoundPlay("@dm005",0,450,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200030a03">
"&.&.&.Aoba&."

Noiz&, holding me&, musters strength into his arms and 
brings his face to my chest&.

{
	CreateSE("SE30","se戦闘_血_垂れる02");
	MusicStart("SE30",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/5200040a01">
"Ah&.&.&. Agh&.&.&. ouch&.&.&.!"

A sharp pain runs through the places&.&.&. where Noiz touches me&.

{
	CreateSE("SE31","se擬音_水_はねるゲル01");
	MusicStart("SE31",0,700,0,1000,null,false);
}
It rips apart my skin and blood begins to gush out&.

{
	CreateSE("SE32","se擬音_水_はねる02");
	MusicStart("SE32",0,700,0,1000,null,false);
}
The pain and bloodshed continues and the wound refuses to  close&.

And it's not only me&.<k>
Wherever Noiz comes in contact with me&, the same happens 
to him&.

Noiz has never felt pain before&, so he must be the one 
hurting the most here&.

Even though I tried not to touch him too much because of 
that&.&.&.

Noiz takes my hand and presses it on his body to open a 
wound&.

And then he smiles while taking the pain&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 0, null);
	SoundPlay("@dm015",0,450,true);

//	Move("絵ＥＶ102", 1000, -320, -292, Axl1, false);
	MoveFTP1("@絵ＥＶ102",5000,5,3);
	Fade("絵ＥＶ102", 1000, 1000, null, true);
	MoveFTP2stop();
	Delete("絵ＥＶ101");


	CreateSE("SE32","se擬音_水_はねる03");
	MusicStart("SE32",0,700,0,1000,null,false);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200050a03">
"&.&.&.It hurts&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200060a03">
"It really hurts&.&.&. But this is what pain is&. The sensation I've never known&.&.&."

&.&.&.Wrong&.<k>
This isn't pain&.

It seems real&, but it's all a deception&.

Because this is your world&.&.&.
It'll warp into what you want it to be&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
This isn't reality&.

Even though I want to tell him&, it won't come out&.

I too&.&.&. am trapped in this world&.

I can't run away now&.

{
//	Move("絵ＥＶ102", 1000, -189, -619, Dxl1, true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200070a03">
"It hurts&.&.&. It hurts&. It hurts&.&.&. Aoba&.&.&. Haha!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/5200080a01">
"Ngh&.&.&.!"

Noiz chuckles and kisses me&.

{
	CreateSE("SE30","se擬音_水_はねる05");
	MusicStart("SE30",0,700,0,1000,null,false);
}
A splash of blood bursts from his lips as they tear apart&.
His entangled tongue rips and his blood continues to flow  out&.

From our bodies&, still holding each other in a tight 
embrace&, a stream of blood flowed farther into the depths&.

And we're both kept alive&, both tortured by the agonizing  pain&.

More and more of Noiz is torn apart&, and his insides begin to rip to pieces&.

We won't be able to move any more&.&.&.<k>
We'll just hold each other&, forever&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	MoveFTP2("@絵ＥＶ102",5000,5,3);
//	Move("絵ＥＶ102", 1000, -99, -677, Dxl3, false);
	Fade("絵ＥＶ103", 1500, 1000, null, true);
	MoveFTP1stop();
	Delete("絵ＥＶ102");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200090a03">
"Heh&, heheh&, hahaha&, haha&.&.&.!"

{
	CreateSE("SE30","se擬音_水_はねる04");
	MusicStart("SE30",0,700,0,1000,null,false);
}
Noiz laughs and licks up my blood with his torn tongue&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/5200100a01">
"&.&.&.Uck! &.&.&.Noiz&.&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200110a03">
"I was always alone&.&.&. but we'll always be together&. You'll always be with me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200120a03">
"It's okay to stay like this&. If I have you and pain&, just  like this&.&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200130a03">
"I'm happy&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5200140a03">
"Haha&, ha&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/5200150a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 6000, 0, null);

	Wait(1000);

	ClearFadeAll(5000, true);

	Wait(3000);
	WaitKey(2000);

//※次ファイル["dm9999.nss"]

}
