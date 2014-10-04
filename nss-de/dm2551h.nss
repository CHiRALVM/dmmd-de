//<continuation number="2010">
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


scene dm2551h.nss_MAIN
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
	#ev255ノイズラブＨ前戯=true;
	#ev255ノイズラブＨ前戯a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2552h.nss";

}


scene dm2551h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg107011_1_病院個室");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -133, -182, "cg/bg/m/bg107011_1_病院個室_m.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
I really couldn't tell whether this was a good idea or not&,
but it never crossed my mind that we should stop&.

Noiz even showed me his honest feelings like I had always 
wanted&, and&.&.&.

I wanted to know more about Noiz&.

Maybe I had always wanted to more than I had ever noticed&.

And at this point&.&.&. the fact that I didn't want to stop 
was proof of that&.

{
	FadeDelete("絵背景100", 500, null, true);

	CreateSE("SE01","se物体_ドア_鍵回す01");
	MusicStart("SE01",0,600,0,1000,null,false);
}

I left Noiz for a moment and locked the door&.
Then I checked that the curtains were definitely closed&.

{
	Fw("fwノイズ_通常病院着_smile");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000570a03">
"You're being cautious&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000580a01">
"Of course I am&.&.&.!"

{
	Fw("fwノイズ_通常病院着_smile2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000590a03">
"I don't really care if anyone sees us&."

{
	Fw("fw蒼葉_通常_sigh");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000600a01">
"Well&, I do&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
I go back over to Noiz and put my hands back on the bed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,600,0,1400,null,false);

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev255ノイズラブＨ前戯.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000610a01">
"&.&.&.&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000620a03">
"&.&.&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000630a01">
"Thi-This sort of thing requires some guts&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000640a03">
"Really?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000650a01">
"Well&, yeah&. I locked the door&, but what if someone was
 standing outside?"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000660a03">
"You don't need to think about that&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000670a01">
"But I am&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000680a03">
"Then stop&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ101", 101, -416, -573, "cg/ev/l/ev255ノイズラブＨ前戯a_l.jpg");
	Move("絵ＥＶ101", 1000, 0, -278, Dxl1, false);
	Fade("絵ＥＶ101", 1000, 1000, Dxl3, true);
	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000690a01">
"!"

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
Noiz let out a small sigh and wrapped his arm around my 
back&.

And like that&.&.&. I let him kiss me&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000700a01">
"&.&.&.Ngh&.&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000710a03">
"&.&.&.&.&.!"

He starts to push harder on my lips&, but then pecks me on 
the cheek to tell me to open my mouth&.

When he sticks his tongue into my open mouth&, he traces it over my teeth&, slowly licking them&.

I heard the sound of something clinking against my teeth 
and I remembered Noiz's tongue piercing&. 

He did the same thing last time&, now that I think about it&.

It was hot and all back then&.&.&. but I would've never 
imagined what it felt like right now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ102", 102, -140, -32, "cg/ev/m/ev255ノイズラブＨ前戯a_m.jpg");
	Move("絵ＥＶ102", 500, -178, -32, Dxl1, false);
	Fade("絵ＥＶ102", 500, 1000, null, true);
	Delete("絵ＥＶ101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000720a01">
"Fu&.&.&. Nnf&."

I put my arms around Noiz's neck as we intertwined and 
sucked on each other's tongues&. I sometimes rub his 
back or his head&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000730a01">
"&.&.&.Haah&.&.&.!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000740a03">
"&.&.&.&.&."

My body temperature rose as my mind began to go numb from 
all the deep kisses&.

I heard the tapping of footsteps by the door before&, but I notice them less and less&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000750a01">
"Mn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵ＥＶ102", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
I slowly lift my body weight and lay Noiz down onto the 
bed&.

As we separate&, a thin string of saliva forms between us&.

More saliva drips from my mouth as my hot&, shallow 
breaths escape into the air&.

Noiz looks at me with a confused expression as he rests 
his head on the pillow&.

{
	Fw("fwノイズ_通常病院着_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000760a03">
"&.&.&.? What?"

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000770a01">
"I thought it'd be hard for you to move&."

{
	Fw("fwノイズ_通常病院着_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000780a03">
"You won't say it's over yet&, will you? And you're even&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常病院着_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000790a03">
"Are you going to ride me&, even though you're on top?"

{
	Fw("fw蒼葉_通常_shy2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000800a01">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_shy3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/5000810a01">
"&.&.&.Well&, that's close to what I was thinking&."

{
	Fw("fwノイズ_通常病院着_shock");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/5000820a03">
"&.&.&.Seriously?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
Noiz's eyelids unexpectedly fluttered&, as if he thought I 
was joking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2552h.nss"]

}
