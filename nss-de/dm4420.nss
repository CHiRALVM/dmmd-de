//<continuation number="20">
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


scene dm4420.nss_MAIN
{
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
	#イベントファイル名=true;

	//▼背景CG
	#bg304011_5_東江タワー全景=true;
	#bg304021_5_東江タワー前通り=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4430.nss";

}


scene dm4420.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304011_5_東江タワー全景.jpg");
	CreateTextureSP("絵背景弐", 90, Center, -220, "cg/bg/l/bg304021_5_東江タワー前通り_l.jpg");
	#bg304011_5_東江タワー全景=true;

	Move("絵背景弐", 0, @0, @100, null, true);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Move("絵背景", 2000, @0, 0, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We walk down the road&, darkened by night&, and stop at the 
brightly lit Oval Tower&.

It's a beautiful sight&.&.&. almost so much that it's eerie&.

We stand in front of the tower&, looking up at it in 
silence&.

And then&, Clear and I rush to go inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 1000, @0, @-100, Dxl1, false);
	Move("絵背景弐", 1000, @0, @-200, Dxl1, false);
	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
There are guards standing at the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm44/2000010e16">
"Please show your invitation to the confirmation monitor&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//CoilIntoSet();
	//■①コイル演出設置２
	//CoilStartSet();
	//CoilStartFade();

	//CoilPictSet(325,50,"cg/ef/efコイル招待状セイ_BASE02.png");
	//CreateSE("SE01","se物体_コイル_操作音02");
	//MusicStart("SE01",0,700,0,1000,null,false);
	//CoilPictFade_Down();
	//Wait(1000);


	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル招待状東江_BASE02.png");

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑥画像表示１（通常表示）
	CoilPictFade();

	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I pull out the invitation from my Coil and show it to the 
monitor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音03");
	MusicStart("SE01",0,700,0,1000,null,false);

	//×⑥ウンロード収納
	CoilPictDelete();

//	Wait(500);

//覇：認証モニターはウィンドウ無し
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm44/2000020e06">
"&.&.&.Confirmed&. Welcome to Oval Tower&. Please come in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The entrance quietly opens&.

Once we're inside&, we're completely in Toue's hands&.

I exchange looks with Clear&, and we step into the tower&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//覇：ダンジョンに入るのでなんとなくトランジでなくフェードで
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(1500);

//※次ファイル["dm4430.nss"]

}
