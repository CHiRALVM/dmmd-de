//<continuation number="30">
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


scene dm0560.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($START0010==1){	$GameName = "dm0560sl.nss";
	}else {		$GameName = "dm0562.nss";
	}

}


scene dm0560.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg106021_5_廃ビル部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se物体_ドア鉄_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE03","se動物_動作_羽ばたく01");
	MusicStart("SE03",300,700,0,1000,null,true);
}
Mink leaves the room&, and as if to switch places with him&, a colorful cockatoo comes in&. 

He leaves something near my legs&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
&.&.&.Oh&.
My bag!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※どさっとカバンを落とす
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,500,0,1200,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1200,null,false);

	Wait(500);

	Fw("fwAMトリ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm05/6000010b12">
"It's your stuff&. Take it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The cockatoo flaps his wings and speaks to me in a dandy 
voice&. Of course&, it's an Allmate&, not a real bird&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, -109, 0, "cg/ev/m/ev051ミンク登場_m.jpg");

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I've seen this bird somewhere before&.
I'm pretty sure he was resting on Mink's shoulder&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写２", 10000);
	Delete("回想*");
	FadeDelete("絵板写２", 500, null, true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/6000020a01">
"Are you Mink's Allmate?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMトリ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm05/6000030b12">
"I am&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,700,0,1000,null,true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
He replies and flaps his wings again before quickly 
leaving through the door&.

That's Mink's&.&.&.

I think over the strangeness of the situation and then pickup my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I unzip it a little to check to see if everything's in
there&.

Inside is a ball of dark blue fur and my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0560sl.nss"]※他ＥＤクリア後出現
//※次ファイル["dm0562.nss"]

}
