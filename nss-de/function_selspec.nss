$Revision: $

//======================================================================//
//�@�h���}�_����I�����p�̐ݒ�
//======================================================================//
//======================================================================//
.//���g���F����I����
//======================================================================//
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//����蕶��z�u
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
function S1SetChoiceBase()
{
	//�`�攭���̈א�΁I
	Wait(16);

	$PLACE_select=true;
	#PreSaveFlag=true;

	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_menu_lock=true;
	$SYSTEM_backlog_lock = true;
	$SYSTEM_text_erase_lock = true;
	$SYSTEM_skip_lock = true;
	$SYSTEM_text_auto_lock = true;
	$SYSTEM_backselect_lock = true;

	//�����b�N�ݒu
	LockVideo(true);



	CreateColor("�G����", 2000, 0, 0, 1024, 576, 000000);
	CreateTexture("ttbk", 2001, 190,437, "cg/sys/select/sp01/grad.png");


	SetFont("�l�r �S�V�b�N", 16, FFFFFF, 222222, 300, NONE);//AROUND

	//�I�����ԍ��p�z��
	DeleteArray($ANS_ARY);
	Array($ANS_ARY);
	//�I�𕶎���p�z��
	DeleteArray($TXT_ARY[0]);
	Array($TXT_ARY);
	$ANS_NTH=0;
	$ANS_TXT="";
	//�{�^���w���W�z��
	Array($B_X_ARY,999,  694,269,815,108,  719,164,383,  580,326,867,446,40,912, 235,605,536);
	//�{�^���x���W�z��
	Array($B_Y_ARY,440,   40,158,106,205,  197, 63,234,  282,  41,255,134,97,42, 263,148,40);

	$total=3-($�g���I����5+$�g���I����6+$�g���I����7);
	//CreateText("tt",20000,600,500,1000,40,"$total=<VALUE name=$total>|");
	//Request("tt",PushText);//$total=0;//WaitKey();
	
	//�폜
	CreateS1Choice(99,153,$B_Y_ARY[0],"nav_�����");
	CreateSound("@ta99/MouseOver/sound", SE, "sound/se/SE_�V�X�e��_�I����_�I��");
	
	//����
	CreateS1Choice(90,877,$B_Y_ARY[0],"nav_���s");
	CreateSound("@ta90/MouseOver/sound", SE, "sound/se/SE_�V�X�e��_�I����_�I��");
	
	//�܂����
	CreateS1Choice(1,$B_X_ARY[1],$B_Y_ARY[1],"��");
	CreateS1Choice(2,$B_X_ARY[2],$B_Y_ARY[2],"��");
	CreateS1Choice(3,$B_X_ARY[3],$B_Y_ARY[3],"��");
	CreateS1Choice(4,$B_X_ARY[4],$B_Y_ARY[4],"��");
	if($total>0){
		//������
		CreateS1Choice(5,$B_X_ARY[5],$B_Y_ARY[5],"��");
		CreateS1Choice(6,$B_X_ARY[6],$B_Y_ARY[6],"��");
		CreateS1Choice(7,$B_X_ARY[7],$B_Y_ARY[7],"��");
	}
	if($total>1){
		//�������߂���
		CreateS1Choice(8,$B_X_ARY[8],$B_Y_ARY[8],"��");
		CreateS1Choice(9,$B_X_ARY[9],$B_Y_ARY[9],"��");
		CreateS1Choice(10,$B_X_ARY[10],$B_Y_ARY[10],"��");
		CreateS1Choice(11,$B_X_ARY[11],$B_Y_ARY[11],"��");
		CreateS1Choice(12, $B_X_ARY[12],$B_Y_ARY[12],"��");
		CreateS1Choice(13,$B_X_ARY[13],$B_Y_ARY[13],"��");
	}
	if($total>2){
		//������
		CreateS1Choice(14,$B_X_ARY[14],$B_Y_ARY[14],"��");
		CreateS1Choice(15,$B_X_ARY[15],$B_Y_ARY[15],"���΂�");
		CreateS1Choice(16,$B_X_ARY[16],$B_Y_ARY[16],"��");
	}

	Fade("ta*/*/*",0,0,null,false);
	Fade("ta*/MouseUsual/hit",0,1000,null,false);

	S1btnMoveOut();

	//�I�[�o�[�����[�v�S����//se�l��_�S��_�ۓ�02L
	CreateSE("SE01","se�l��_�S��_�ۓ�02L");
	$S1SE01="@SE01";

	//�����b�N����
	LockVideo(false);

	//�t�H�[�J�X���Ȃ�

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;
	#SYSTEM_skip_express_minimum_time=0;

//	if(!$�G�L�X�g���^�C�g��){
//		Save(9999);
//	}
	//if($GameName!="a0_01_01.nss"){
		$SYSTEM_menu_lock=false;
		//Boxframe();
	//}

	FadeDelete("�G����",16,null,true);


	$LOCAL_keydown_left=false;
	$LOCAL_keydown_right=false;
	$LOCAL_keydown_up=false;
	$LOCAL_keydown_down=false;
	$LOCAL_mousewheel_up=false;
	$LOCAL_mousewheel_down=false;

	$SYSTEM_keydown_left=false;
	$SYSTEM_keydown_right=false;
	$SYSTEM_keydown_up=false;
	$SYSTEM_keydown_down=false;
	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
/*
	//���I�����J�[�\����~�o�O�p
	CursorPosition($X���W�I��,$Y���W�I��);
	$Y���W�I��+=5;
	MoveCursor($X���W�I��,$Y���W�I��);
	Wait(16);
*/
	$SYSTEM_show_cursor = true;
	$SYSTEM_last_text = "�@";//$LOCAL_last_text2;//�g�����I

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;


	//�P�񂾂�
	if($quick_save_once1460==1){
		//���h���}�_�i�I������O�ŃN�C�b�N�Z�[�u�j//�g�����I
		if(#quick_save_enabled){
			$SYSTEM_skip=false;
			#SYSTEM_skip_express=false;
			$SYSTEM_text_auto=false;
			#SYSTEM_skip_express_minimum_time=0;
	
			$LOCAL_quick_save_enabled=true;
			KickShortcut("s");
	//		$LOCAL_quick_save_enabled=false;
			$SYSTEM_keydown_s=false;
		}
		$quick_save_once1460=0;
	}


}
function S1PlaySE01()
{
	Request($S1SE01, Play);
	SetLoop($S1SE01, true);
	SetVolumeEX($S1SE01, 0,1000, null);
}
function S1StopSE01()
{
	//Request($S1SE01, Stop);
	//SetLoop($S1SE01, false);
	SetVolumeEX($S1SE01, 100,0, null);
}

function CreateS1Choice($n,$x,$y,$file)
{
	$nuthd=String("ta%02d",$n);
	$�D��x=2010;
	CreateChoice($nuthd,0,0,0,0,0,0);
	SetAlias($nuthd,$nuthd);
	$nutname=$nuthd+"/MouseUsual/hit";
	$myfile="cg/sys/select/sp01/"+$file+".png";
	CreateTextureSP($nutname, $�D��x, $x,$y, $myfile);
	
	$nutname=$nuthd+"/MouseOver/img";
	$myfile="cg/sys/select/sp01/"+$file+"_on.png";
	CreateTextureSP($nutname, $�D��x, $x,$y, $myfile);
	$nutname=$nuthd+"/MouseClick/img";
	CreateTextureSP($nutname, 2011, $x,$y, $myfile);
	
	$S1overtime=28;
//if($n>3){return;}
	$nutname=$nuthd+"/MouseOver/prcs";
	$prsname=String("S1over%02d",$n);
	CreateProcess($nutname, $�D��x, $x,$y, $prsname);
	$nutname=$nuthd+"/MouseLeave/prcs";
	$prsname=String("S1leave%02d",$n);
	CreateProcess($nutname, $�D��x, $x,$y, $prsname);
}
function S1over01()
{
	begin:
	S1PlaySE01();
	while(1){
		$rnd01x=Random(100);
		$rnd01x=($rnd01x-50)/30;
		$x01=$B_X_ARY[1]+$rnd01x;
		$rnd01y=Random(100);
		$rnd01y=($rnd01y-50)/30;
		$y01=$B_Y_ARY[1]+$rnd01y;
		Move("@ta01/MouseOver/img",0,$x01,$y01,null,true);Wait($S1overtime);
	}
}
function S1leave01(){begin:Move("@ta01/MouseOver/img",0,$B_X_ARY[1],$B_Y_ARY[1],null,true);S1StopSE01();}
function S1over02(){begin:	S1PlaySE01();
	while(1){
		$rnd02x=Random(100);
		$rnd02x=($rnd02x-50)/40;
		$x02=$B_X_ARY[2]+$rnd02x;
		$rnd02y=Random(100);
		$rnd02y=($rnd02y-50)/40;
		$y02=$B_Y_ARY[2]+$rnd02y;
		Move("@ta02/MouseOver/img",0,$x02,$y02,null,true);Wait($S1overtime);
	}
}
function S1leave02(){begin:Move("@ta02/MouseOver/img",0,$B_X_ARY[2],$B_Y_ARY[2],null,true);S1StopSE01();}
function S1over03(){begin:	S1PlaySE01();
	while(1){
		$rnd03x=Random(100);
		$rnd03x=($rnd03x-50)/20;
		$x03=$B_X_ARY[3]+$rnd03x;
		$rnd03y=Random(100);
		$rnd03y=($rnd03y-50)/20;
		$y03=$B_Y_ARY[3]+$rnd03y;
		Move("@ta03/MouseOver/img",0,$x03,$y03,null,true);Wait($S1overtime);
	}
}
function S1leave03(){begin:Move("@ta03/MouseOver/img",0,$B_X_ARY[3],$B_Y_ARY[3],null,true);S1StopSE01();}
function S1over04(){begin:	S1PlaySE01();
	while(1){
		$rnd04x=Random(100);
		$rnd04x=($rnd04x-50)/30;
		$x04=$B_X_ARY[4]+$rnd04x;
		$rnd04y=Random(100);
		$rnd04y=($rnd04y-50)/30;
		$y04=$B_Y_ARY[4]+$rnd04y;
		Move("@ta04/MouseOver/img",0,$x04,$y04,null,true);Wait($S1overtime);
	}
}
function S1leave04(){begin:Move("@ta04/MouseOver/img",0,$B_X_ARY[4],$B_Y_ARY[4],null,true);S1StopSE01();}
function S1over05(){begin:	S1PlaySE01();
	while(1){
		$rnd05x=Random(100);
		$rnd05x=($rnd05x-50)/30;
		$x05=$B_X_ARY[5]+$rnd05x;
		$rnd05y=Random(100);
		$rnd05y=($rnd05y-50)/30;
		$y05=$B_Y_ARY[5]+$rnd05y;
		Move("@ta05/MouseOver/img",0,$x05,$y05,null,true);Wait($S1overtime);
	}
}
function S1leave05(){begin:Move("@ta05/MouseOver/img",0,$B_X_ARY[5],$B_Y_ARY[5],null,true);S1StopSE01();}
function S1over06(){begin:	S1PlaySE01();
	while(1){
		$rnd06x=Random(100);
		$rnd06x=($rnd06x-50)/30;
		$x06=$B_X_ARY[6]+$rnd06x;
		$rnd06y=Random(100);
		$rnd06y=($rnd06y-50)/30;
		$y06=$B_Y_ARY[6]+$rnd06y;
		Move("@ta06/MouseOver/img",0,$x06,$y06,null,true);Wait($S1overtime);
	}
}
function S1leave06(){begin:Move("@ta06/MouseOver/img",0,$B_X_ARY[6],$B_Y_ARY[6],null,true);S1StopSE01();}
function S1over07(){begin:	S1PlaySE01();
	while(1){
		$rnd07x=Random(100);
		$rnd07x=($rnd07x-50)/20;
		$x07=$B_X_ARY[7]+$rnd07x;
		$rnd07y=Random(100);
		$rnd07y=($rnd07y-50)/20;
		$y07=$B_Y_ARY[7]+$rnd07y;
		Move("@ta07/MouseOver/img",0,$x07,$y07,null,true);Wait($S1overtime);
	}
}
function S1leave07(){begin:Move("@ta07/MouseOver/img",0,$B_X_ARY[7],$B_Y_ARY[7],null,true);S1StopSE01();}
function S1over08(){begin:	S1PlaySE01();
	while(1){
		$rnd08x=Random(100);
		$rnd08x=($rnd08x-50)/20;
		$x08=$B_X_ARY[8]+$rnd08x;
		$rnd08y=Random(100);
		$rnd08y=($rnd08y-50)/20;
		$y08=$B_Y_ARY[8]+$rnd08y;
		Move("@ta08/MouseOver/img",0,$x08,$y08,null,true);Wait($S1overtime);
	}
}
function S1leave08(){begin:Move("@ta08/MouseOver/img",0,$B_X_ARY[8],$B_Y_ARY[8],null,true);S1StopSE01();}
function S1over09(){begin:	S1PlaySE01();
	while(1){
		$rnd09x=Random(100);
		$rnd09x=($rnd09x-50)/20;
		$x09=$B_X_ARY[9]+$rnd09x;
		$rnd09y=Random(100);
		$rnd09y=($rnd09y-50)/20;
		$y09=$B_Y_ARY[9]+$rnd09y;
		Move("@ta09/MouseOver/img",0,$x09,$y09,null,true);Wait($S1overtime);
	}
}
function S1leave09(){begin:Move("@ta09/MouseOver/img",0,$B_X_ARY[9],$B_Y_ARY[9],null,true);S1StopSE01();}
function S1over10(){begin:	S1PlaySE01();
	while(1){
		$rnd10x=Random(100);
		$rnd10x=($rnd10x-50)/30;
		$x10=$B_X_ARY[10]+$rnd10x;
		$rnd10y=Random(100);
		$rnd10y=($rnd10y-50)/30;
		$y10=$B_Y_ARY[10]+$rnd10y;
		Move("@ta10/MouseOver/img",0,$x10,$y10,null,true);Wait($S1overtime);
	}
}
function S1leave10(){begin:Move("@ta10/MouseOver/img",0,$B_X_ARY[10],$B_Y_ARY[10],null,true);S1StopSE01();}
function S1over11(){begin:	S1PlaySE01();
	while(1){
		$rnd11x=Random(100);
		$rnd11x=($rnd11x-50)/40;
		$x11=$B_X_ARY[11]+$rnd11x;
		$rnd11y=Random(100);
		$rnd11y=($rnd11y-50)/40;
		$y11=$B_Y_ARY[11]+$rnd11y;
		Move("@ta11/MouseOver/img",0,$x11,$y11,null,true);Wait($S1overtime);
	}
}
function S1leave11(){begin:Move("@ta11/MouseOver/img",0,$B_X_ARY[11],$B_Y_ARY[11],null,true);S1StopSE01();}
function S1over12(){begin:	S1PlaySE01();
	while(1){
		$rnd12x=Random(100);
		$rnd12x=($rnd12x-50)/40;
		$x12=$B_X_ARY[12]+$rnd12x;
		$rnd12y=Random(100);
		$rnd12y=($rnd12y-50)/40;
		$y12=$B_Y_ARY[12]+$rnd12y;
		Move("@ta12/MouseOver/img",0,$x12,$y12,null,true);Wait($S1overtime);
	}
}
function S1leave12(){begin:Move("@ta12/MouseOver/img",0,$B_X_ARY[12],$B_Y_ARY[12],null,true);S1StopSE01();}
function S1over13(){begin:	S1PlaySE01();
	while(1){
		$rnd13x=Random(100);
		$rnd13x=($rnd13x-50)/30;
		$x13=$B_X_ARY[13]+$rnd13x;
		$rnd13y=Random(100);
		$rnd13y=($rnd13y-50)/30;
		$y13=$B_Y_ARY[13]+$rnd13y;
		Move("@ta13/MouseOver/img",0,$x13,$y13,null,true);Wait($S1overtime);
	}
}
function S1leave13(){begin:Move("@ta13/MouseOver/img",0,$B_X_ARY[13],$B_Y_ARY[13],null,true);S1StopSE01();}
function S1over14(){begin:	S1PlaySE01();
	while(1){
		$rnd14x=Random(100);
		$rnd14x=($rnd14x-50)/30;
		$x14=$B_X_ARY[14]+$rnd14x;
		$rnd14y=Random(100);
		$rnd14y=($rnd14y-50)/30;
		$y14=$B_Y_ARY[14]+$rnd14y;
		Move("@ta14/MouseOver/img",0,$x14,$y14,null,true);Wait($S1overtime);
	}
}
function S1leave14(){begin:Move("@ta14/MouseOver/img",0,$B_X_ARY[14],$B_Y_ARY[14],null,true);S1StopSE01();}
function S1over15(){begin:	S1PlaySE01();
	while(1){
		$rnd15x=Random(100);
		$rnd15x=($rnd15x-50)/30;
		$x15=$B_X_ARY[15]+$rnd15x;
		$rnd15y=Random(100);
		$rnd15y=($rnd15y-50)/30;
		$y15=$B_Y_ARY[15]+$rnd15y;
		Move("@ta15/MouseOver/img",0,$x15,$y15,null,true);Wait($S1overtime);
	}
}
function S1leave15(){begin:Move("@ta15/MouseOver/img",0,$B_X_ARY[15],$B_Y_ARY[15],null,true);S1StopSE01();}
function S1over16(){begin:	S1PlaySE01();
	while(1){
		$rnd16x=Random(100);
		$rnd16x=($rnd16x-50)/30;
		$x16=$B_X_ARY[16]+$rnd16x;
		$rnd16y=Random(100);
		$rnd16y=($rnd16y-50)/30;
		$y16=$B_Y_ARY[16]+$rnd16y;
		Move("@ta16/MouseOver/img",0,$x16,$y16,null,true);Wait($S1overtime);
	}
}
function S1leave16(){begin:Move("@ta16/MouseOver/img",0,$B_X_ARY[16],$B_Y_ARY[16],null,true);S1StopSE01();}

...//������
function S1WaitChoice()
{
		//	if(!#PreSaveFlag){
		//		SelectSave();
		//	}
	$INPUT_WHILE=1;
	while($INPUT_WHILE==1)
	{
		#IsLoaded=false;
		select
		{
			if(#IsLoaded){
				SetVolumeEX($S1SE01,0,0,null);
				#IsLoaded=false;
			}
			if($SYSTEM_skip||$SYSTEM_text_auto){
				$SYSTEM_skip=false;
				$SYSTEM_text_auto=false;
			}
		
			case @ta01{S1Choice(1,"Do ")};
			case @ta02{S1Choice(2,"Not ")};
			case @ta03{S1Choice(3,"Give ")};
			case @ta04{S1Choice(4,"In ")};
			case @ta05{S1Choice(5,"A ")};
			case @ta06{S1Choice(6,"I ")};
			case @ta07{S1Choice(7,"Save ")};
			case @ta08{S1Choice(8,"Here ")};
			case @ta09{S1Choice(9,"No ")};
			case @ta10{S1Choice(10,"Hurt ")};
			case @ta11{S1Choice(11,"Come ")};
			case @ta12{S1Choice(12,"Me ")};
			case @ta13{S1Choice(13,"Will ")};
			case @ta14{S1Choice(14,"Please ")};
			case @ta15{S1Choice(15,"Please ")};
			case @ta16{S1Choice(16,"You ")};

			case @ta99{S1Choice(99,"�폜")};
			case @ta90{S1Choice(90,"����");$INPUT_WHILE=0;}
		}
		S1ChoiceEffect();
	}
	
	SetLoop($S1SE01, false);
	Request($S1SE01, Disused);
	
	Wait(200);

	$SYSTEM_backlog_lock = false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_auto_lock = false;
	$SYSTEM_show_cursor = false;
	$SYSTEM_text_erase_lock = false;
	if(!$�G�L�X�g���^�C�g��){
		$SYSTEM_backselect_lock =false;
	}
/*
	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}
*/
	$PLACE_select=false;

}
function S1Choice($num,$chr)
{
	$S1Sel=$num;
	$S1Chr=$chr;
}
//������43//$ANS_ARY//$TXT_ARY//$ANS_NTH//$ANS_TXT
function S1ChoiceEffect()
{
	$num=$S1Sel;
	$chr=$S1Chr;
	if($num==90){
		//����
		SetVolumeEX($S1SE01, 16,0, null);
		CreateSE("SE02","SE_�V�X�e��_�I����_����");
		MusicStart("SE02",0,700,0,1000,null,false);
		
		Delete("tt*");
		Delete("ta9*");
		$i=0;
		while($i<$ANS_NTH){
			$ANS_TXT=$ANS_TXT+$TXT_ARY[0][$i];
			$i++;
		}
		
	}else if($num==99){
		//�폜
		SetVolumeEX($S1SE01, 16,0, null);
		CreateSE("SE02","se�[��_���__�g������01b");//se����_����_�Փ�01//
		MusicStart("SE02",0,700,0,1000,null,false);
		
		$ANS_NTH--;
		$prenth=$ANS_ARY[0][$ANS_NTH];
		DeleteArray($ANS_ARY[0][$ANS_NTH]);
		DeleteArray($TXT_ARY[0][$ANS_NTH]);
		$txtnut=String("tt%02d",$ANS_NTH);
		Delete($txtnut);
		S1btnMoveIn($prenth);
		if($ANS_NTH<1){S1btnMoveOut();DeleteArray($TXT_ARY[0]);}
	}else{
		SetVolumeEX($S1SE01, 16,0, null);
		CreateSE("SE02","se�[��_���__�g������01a");//se�퓬_����_�i�C�t�\����01
		MusicStart("SE02",0,700,0,1000,null,false);
		
		$nutname=String("ta%02d/*/*",$num);
		$myx=$ANS_NTH*43+170;
		$mvt=100;
		Array($mvx_ary,-1,   0,  5, -8, -4,  7,   4,-11, -4, -4,-10,  -2, -1,  5,  2, -6,   7);//170
		Array($mvy_ary,-1, 416,421,407,413,427, 422,407,413,413,410, 413,416,423,417,411, 425);
		$myx=$myx+$mvx_ary[$num];
		$mvy=$mvy_ary[$num];
		//Fade($nutname,$mvt,0,null,false);766/423
		Zoom($nutname,$mvt,500,500,null,false);
		Move($nutname,$mvt,$myx,$mvy,Dxl1,true);//WaitKey();
		Move($nutname,0,$B_X_ARY[$num],-100,null,true);
		
		$ANS_ARY[0][$ANS_NTH]=$num;
		$TXT_ARY[0][$ANS_NTH]=$chr;
		
		SetFont("�l�r �S�V�b�N", 14, FFFFFF, 222222, 500, NONE);//AROUND
		$txtnut=String("tt%02d",$ANS_NTH);
		$txtx=201+($ANS_NTH*43);
		CreateText($txtnut,2005,$txtx,447,50,40,$chr);
		Request($txtnut,NoLog);Request($txtnut,PushText);
		
		Move("ta9*/*/*",0,@0,$B_Y_ARY[0],null,false);
		$ANS_NTH++;
	
	}

}
function S1btnMoveOut()
{
	Move("ta9*/*/*",0,@0,-100,null,false);
}
function S1btnMoveIn($nth)
{
	$nutname=String("ta%02d/*/*",$nth);
	$btnx=$B_X_ARY[$nth];
	$btny=$B_Y_ARY[$nth];
	$strtx=$ANS_NTH*43+170;
	$strtx=$strtx+$mvx_ary[$nth];
	$strty=$mvy_ary[$nth];

	Zoom($nutname,0,500,500,null,false);
	Move($nutname,0,$strtx,$strty,null,true);

	$mvrtt=150;
	Move($nutname,$mvrtt,$btnx,$btny,Dxl1,false);
	//Fade($nutname,0,1000,null,false);
	Zoom($nutname,$mvrtt,1000,1000,null,true);
}

//======================================================================//
.//���m�C�Y�F����I����
//======================================================================//
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//���I�����{�^����z�u
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//

function S2SetChoiceBase()
{
	//�`�攭���̈א�΁I
	Wait(16);

	$PLACE_select=true;
	#PreSaveFlag=true;

	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_menu_lock=true;
	$SYSTEM_backlog_lock = true;
	$SYSTEM_text_erase_lock = true;
	$SYSTEM_skip_lock = true;
	$SYSTEM_text_auto_lock = true;
	$SYSTEM_backselect_lock = true;

	//�����b�N�ݒu
	LockVideo(true);


	CreateColor("�G����", 1015, 0, 0, 1024, 576, 000000);

	SetFont("�l�r �S�V�b�N", 20, FFFFFF, 222222, 500, AROUND);
	LoadImage("tsankaku","cg/sys/select/sp02/�m�C�Y����I��_���񂩂��J�[�T�[.png");

	$SetChoiceNum=Count($ANS_ARY[0]);
	$i=1;
	while($i<=$SetChoiceNum){

		$cname=String("ta%02d",$i);
		CreateChoice($cname,0,0,0,0,0,0);
		SetAlias($cname,$cname);
	
		$tstr=$ANS_ARY[0][($i-1)];
		$tn=Strlen($tstr);
		$tx=365;
		$ty=($i-1)*37+332;
		$tnut=String("ta%02d",$i)+"/txt";
		CreateText($tnut, 1010, $tx,$ty, 340,40, $tstr);
		Request($tnut,PushText);Request($tnut,NoLog);
	
		$choicenut=$cname+"/MouseUsual/hit";
		$myh=24;
		$myw=20*$tn+30;
		$myx=345;
		$myy=($i-1)*37+340;
		CreateColor($choicenut,1000, $myx,$myy, $myw,$myh, FFFFFF);
		Request($choicenut,Erase);
	
		$myx=$myx+5;
		$myy=$myy+5;
		$choicenut=$cname+"/MouseOver/hit";
		CreateTexture($choicenut, 1000, $myx,$myy, "tsankaku");
		$choicenut=$cname+"/MouseClick/hit";
		CreateTexture($choicenut, 1000, $myx,$myy, "tsankaku");
		
		if($i==1){$crsx=$myw/2+$myx;$crsy=$myh/2+$myy;}
		$i++;
	}

	Fade("ta*/*/*",0,0,null,false);
	Fade("ta*/txt",0,1000,null,false);

	//�t�H�[�J�X
	//ChoiceFocus();
	if($SetChoiceNum==2){
		SetNextFocus("ta01/MouseUsual/hit","ta02/MouseUsual/hit",DOWN);
		SetNextFocus("ta01/MouseUsual/hit","ta02/MouseUsual/hit",UP);
		SetNextFocus("ta02/MouseUsual/hit","ta01/MouseUsual/hit",DOWN);
		SetNextFocus("ta02/MouseUsual/hit","ta01/MouseUsual/hit",UP);
	}else{
		SetNextFocus("ta01/MouseUsual/hit","ta01/MouseUsual/hit",DOWN);
		SetNextFocus("ta01/MouseUsual/hit","ta01/MouseUsual/hit",UP);
	}
	
	MoveCursor($crsx,$crsy);

	//�����b�N����
	LockVideo(false);

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;
	#SYSTEM_skip_express_minimum_time=0;

	if(!$�G�L�X�g���^�C�g��){
		Save(9999);
	}
	//if($GameName!="a0_01_01.nss"){
		$SYSTEM_menu_lock=false;
		//Boxframe();
	//}

	FadeDelete("�G����",16,null,true);


	$LOCAL_keydown_left=false;
	$LOCAL_keydown_right=false;
	$LOCAL_keydown_up=false;
	$LOCAL_keydown_down=false;
	$LOCAL_mousewheel_up=false;
	$LOCAL_mousewheel_down=false;

	$SYSTEM_keydown_left=false;
	$SYSTEM_keydown_right=false;
	$SYSTEM_keydown_up=false;
	$SYSTEM_keydown_down=false;
	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
/*
	//���I�����J�[�\����~�o�O�p
	CursorPosition($X���W�I��,$Y���W�I��);
	$Y���W�I��+=5;
	MoveCursor($X���W�I��,$Y���W�I��);
	Wait(16);
*/
	$SYSTEM_show_cursor = true;
	if($GameName=="dm2440sl34.nss"){$SYSTEM_last_text = $TXT_BACKLOG+"<BR>�w"+$ANS_ARY[0][0]+"�x";
	}else{$SYSTEM_last_text = $TXT_BACKLOG+"<BR>�w"+$ANS_ARY[0][0]+"�x�w"+$ANS_ARY[0][1]+"�x";}//$LOCAL_last_text2;//�m�C�Y���I

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;


//�I������O�ŃN�C�b�N�Z�[�u�͖`����"dm2440sl01.nss"�̂݁B
//�ˑS���ɓ����ƃN�C�b�N�Z�[�u�y�[�W�̃R�}���S�����܂��Ă��܂�����
	//���h���}�_�i�I������O�ŃN�C�b�N�Z�[�u�j//�m�C�Y���I
	if($GameName=="dm2440sl01.nss"&&$�m�C�Y���[�v<1){
	if(#quick_save_enabled){
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
		$SYSTEM_text_auto=false;
		#SYSTEM_skip_express_minimum_time=0;

		$LOCAL_quick_save_enabled=true;
		KickShortcut("s");
//		$LOCAL_quick_save_enabled=false;
		$SYSTEM_keydown_s=false;
	}
	}

}

...//���P��
function S2WaitChoice01()
{
	select
	{
		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @ta01
		{
			S2ChoiceA01();
		}
	}
}
...//���Q��
function S2WaitChoice02()
{
	select
	{
		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @ta01
		{
			S2ChoiceA02();
		}
		case @ta02
		{
			S2ChoiceB02();
		}
	}

}

function S2ChoiceA01()
{
	//�I�����͉��H
	$SetChoiceSelect=0;
	//�I��������
	S2ChoiceFade();
}
function S2ChoiceA02()
{
	//�I�����͉��H
	$SetChoiceSelect=0;
	//�I��������
	S2ChoiceFade();
}
function S2ChoiceB02()
{
	//�I�����͉��H
	$SetChoiceSelect=1;
	//�I��������
	S2ChoiceFade();
}

function S2ChoiceFade()
{

	$�e�L�X�g�f�[�^�o�b�N���O�P="�y"+$ANS_ARY[0][$SetChoiceSelect]+"�z";

	//SetBacklog("�@", "null", null);//���o�N���O
	SetBacklog($�e�L�X�g�f�[�^�o�b�N���O�P, "null", null);//���o�N���O
	//SetBacklog("�@", "null", null);//���o�N���O


	if($SetChoiceSelect==1){$anut="ta01/txt";}
	else{$anut="ta02/txt";}
	//if(#SYSTEM_text_speed<33){$ftime=16;}
	//else {$ftime=#SYSTEM_text_speed/2;}
	$ftime=50;
	Fade($anut, $ftime, 0, null, false);
	S2QFade($ftime);

	$SYSTEM_backlog_lock = false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_auto_lock = false;
	$SYSTEM_show_cursor = false;
	$SYSTEM_text_erase_lock = false;
	if(!$�G�L�X�g���^�C�g��){
		$SYSTEM_backselect_lock =false;
	}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	$PLACE_select=false;

}
function S2QFade($ftime)
{
	Fade("tq*", $ftime, 0, null, true);
	Wait($ftime);
	Delete("t*");
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//����蕶��z�u
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//

function S2SetQ()
{
	CreateColor("tq_color",0,0,0,1024,576,BLACK);
	CreateTexture("tq_", 1020, 545,286, "cg/sys/select/sp02/�m�C�Y����I��_�A���_�[�o�[.png");//+2

	SetBacklog($TXT_BACKLOG,null,null);
	$tspeed=100;

	$qx=200;$qy=256;
	$qtx=$qx;$qty=$qy;$qtw=17;
	$qp=1020;//��蕶�`��D��x

	$is2=0;
	$chri=0;//���Ԗڂ̕���
	$chrn=0;//�ϊ�����
	$chrstr="";//����
	$xnth1=0;//x���W�l�p
	while($is2<$TXT_ARYCNT)
	{
		$charcnt=Count($TXT_ARY[$is2]);
		$chrn=$charcnt-1;
		$chrstr=$TXT_ARY[$is2][$chrn];//�\������
		$chrlen1=Strlen($chrstr);
		$js2=0;$chrnth=1;
		
		//CreateText("tt",2000,0,0,1000,40,"$chrstr=<VALUE name=$chrstr>|$chrlen1=<VALUE name=$chrlen1>|$j=<VALUE name=$j>|");
		//Request("tt",PushText);WaitKey();
		
		$nuthd=String("tq%02d_",$is2);
		while($js2<$charcnt){
			//�\������
			$nutnm=$nuthd+$js2;
			
			$chrstr=$TXT_ARY[$is2][$js2];
			$chrlen2=Strlen($chrstr);
			if($chrstr=="/"){//�X�L�b�v
			}else{
				if($chrnth==$charcnt){$n1=0;}
				else{
					$n0=$js2%2;
					if($n0==1){$n1=($js2-1)/2;}
					else{$n1=$js2/2;}
				}
				//$nx=$j/2+$xnth;
				$myx=($n1*$qtw)+($xnth1*$qtw)+$qx;//($i*$qtw)
				
				if($chrnth==$charcnt){//�Ō�̕���
					$nutdl=$nuthd+"*";
				}else{//�r���̕���
					if($n0==1){
						$nn=$js2-1;
						$nutdl=$nuthd+$nn;
					}else{
						$nutdl="";
					}
					
					
				}
				if($nutdl!=""){Delete($nutdl);}
				$barx=$myx+($qtw*$chrlen2);
				SetFont("�l�r �S�V�b�N", 22, FFFFFF, 222222, 500, AROUND);//�o�b�N���O��ł����̃t�H���g
				CreateText($nutnm,$qp,$myx,$qty,50,40,$chrstr);
				Request($nutnm,NoLog);Request($nutnm,PushText);
				Move("tq_",0,$barx,@0,null,false);
				Wait($tspeed);//WaitKey();//
			}
			
			$js2++;
			$chrnth++;
			
		}
			$xnth1=$xnth1+$chrlen1;
	
		$is2++;
	}

}

//======================================================================//
.//���N���A�F����I����
//======================================================================//
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//���I�����{�^����z�u
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//

function S4SetChoiceBase()
{//SetFont("�l�r �S�V�b�N", 16, FFFFFF, b51020, 500, AROUND);
	//�`�攭���̈א�΁I
	Wait(16);

	$PLACE_select=true;
	#PreSaveFlag=true;

	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_menu_lock=true;
	$SYSTEM_backlog_lock = true;
	$SYSTEM_text_erase_lock = true;
	$SYSTEM_skip_lock = true;
	$SYSTEM_text_auto_lock = true;
	$SYSTEM_backselect_lock = true;

	//�����b�N�ݒu
	LockVideo(true);


	LoadImage("S4Gear0","cg/sys/select/sp04/�I��̈�.png");
	LoadImage("S4Gear1","cg/sys/select/sp04/�M�A101.png");
	LoadImage("S4Gear2","cg/sys/select/sp04/�M�A102.png");
	LoadImage("S4GearC","cg/sys/select/sp04/�X�t�B�A.png");
	
	$nutname="S4Rgear0";
	CreateTextureSP($nutname, 1901, 547, 152, "cg/sys/select/sp04/�M�A200��.png");
	Request($nutname,Smoothing);
	Rotate($nutname,0,0,0,0,null,false);

	CreateTextureSP("S4Lgear1", 1901, 206, 152, "S4Gear2");
	CreateTextureEX("S4Lgear2", 1901, 206, 152, "S4Gear1");
	CreateTextureEX("S4LgearS", 1901, 227, 246, "cg/sys/select/sp04/�M�A��01.png");
	CreateTextureSP("S4LgearC", 1901, 220, 167, "S4GearC");
	CreateTextureSP("S4LgearS2", 1941, 227, 246, "cg/sys/select/sp04/�M�A��01_��.png");
	CreateTextureSP("S4LgearT", 1941, 255, 266, "cg/sys/select/sp04/�I��01.png");

	CreateTextureSP("S4Rgear1", 1901, 547, 152, "S4Gear1");
	CreateTextureEX("S4Rgear2", 1901, 547, 152, "S4Gear2");
	CreateTextureEX("S4RgearS", 1901, 609, 206, "cg/sys/select/sp04/�M�A��02.png");
	CreateTextureSP("S4RgearC", 1901, 561, 167, "S4GearC");
	CreateTextureSP("S4RgearS2", 1941, 609, 206, "cg/sys/select/sp04/�M�A��02_��.png");
	CreateTextureSP("S4RgearT", 1941, 583, 266, "cg/sys/select/sp04/�I��02.png");

	$i=0;$myy=167;
	while($i<2){
		if($i==0){$typ="L";$typ2="��";$myx=220;}
		else{$typ="R";$typ2="�E";$myx=561;}
		
		$j=1;
		while($j<15){
			$nutname="S4Break"+$typ+String("%02d",$j);
			$filename="cg/sys/select/sp04/"+$typ2+String("%02d",$j)+".png";
			CreateTextureSP($nutname, 1931, $myx, $myy, $filename);
			$j++;
		}
		$k=1;
		while($k<7){
			$nutname="S4"+$typ+String("Crack%02d",$k);
			$filename="cg/sys/select/sp04/"+$typ2+"_����"+String("%02d",$k)+".png";
			CreateTextureSP($nutname, 1941, $myx, $myy, $filename);
			$k++;
		}
		$i++;
	}
	Fade("S4BreakL*",0,0,null,false);
	Fade("S4BreakR*",0,0,null,false);
	Fade("S4LCrack*",0,0,null,false);
	Fade("S4RCrack*",0,0,null,false);

	CreateSE("S4SE01","se����_�K���X_�����02");
	CreateSE("S4SE02","se����_�K���X_�����03");
	//MusicStart("SE01",0,700,0,1000,null,false);


	$nuthd="S4selL";
	CreateChoice($nuthd,0,0,0,0,0,0);
	SetAlias($nuthd,$nuthd);
	$nutname=$nuthd+"/MouseUsual/hit";
	CreateTexture($nutname, 1, 206,152, "S4Gear0");
	Request($nutname,Erase);
	$nutname=$nuthd+"/MouseOver/prcs";
	CreateProcess($nutname,1900,0,0,"S4Lover");
	$nutname=$nuthd+"/MouseLeave/prcs";
	CreateProcess($nutname,1900,0,0,"S4Lleave");

	$nuthd="S4selR";
	CreateChoice($nuthd,0,0,0,0,0,0);
	SetAlias($nuthd,$nuthd);
	$nutname=$nuthd+"/MouseUsual/hit";
	CreateTexture($nutname, 1, 547,152, "S4Gear0");
	Request($nutname,Erase);
	$nutname=$nuthd+"/MouseOver/prcs";
	CreateProcess($nutname,1900,0,0,"S4Rover");
	$nutname=$nuthd+"/MouseLeave/prcs";
	CreateProcess($nutname,1900,0,0,"S4Rleave");


	SetNextFocus("S4selL/MouseUsual/hit","S4selR/MouseUsual/hit",DOWN);
	SetNextFocus("S4selL/MouseUsual/hit","S4selR/MouseUsual/hit",UP);
	SetNextFocus("S4selL/MouseUsual/hit","S4selR/MouseUsual/hit",RIGHT);
	SetNextFocus("S4selL/MouseUsual/hit","S4selR/MouseUsual/hit",LEFT);

	SetNextFocus("S4selR/MouseUsual/hit","S4selL/MouseUsual/hit",DOWN);
	SetNextFocus("S4selR/MouseUsual/hit","S4selL/MouseUsual/hit",UP);
	SetNextFocus("S4selR/MouseUsual/hit","S4selL/MouseUsual/hit",RIGHT);
	SetNextFocus("S4selR/MouseUsual/hit","S4selL/MouseUsual/hit",LEFT);


	//�����b�N����
	LockVideo(false);

	//�t�H�[�J�X���Ȃ�

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;
	#SYSTEM_skip_express_minimum_time=0;

	if(!$�G�L�X�g���^�C�g��){
		Save(9999);
	}
	//if($GameName!="a0_01_01.nss"){
		$SYSTEM_menu_lock=false;
		//Boxframe();
	//}


	$LOCAL_keydown_left=false;
	$LOCAL_keydown_right=false;
	$LOCAL_keydown_up=false;
	$LOCAL_keydown_down=false;
	$LOCAL_mousewheel_up=false;
	$LOCAL_mousewheel_down=false;

	$SYSTEM_keydown_left=false;
	$SYSTEM_keydown_right=false;
	$SYSTEM_keydown_up=false;
	$SYSTEM_keydown_down=false;
	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	//���I�����J�[�\����~�o�O�p
	CursorPosition($X���W�I��,$Y���W�I��);
	$Y���W�I��+=5;
	MoveCursor($X���W�I��,$Y���W�I��);
	Wait(16);

	$SYSTEM_show_cursor = true;
	$SYSTEM_last_text = "�wIt's fine to rest�x�wIt's better to stop now�x";//$LOCAL_last_text2;//�N���A���I

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;


}

...//���Q��
function S4WaitChoice()
{
	//���h���}�_�i�I������O�ŃN�C�b�N�Z�[�u�j//�N���A���I
	if(#quick_save_enabled){
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
		$SYSTEM_text_auto=false;
		#SYSTEM_skip_express_minimum_time=0;

		$LOCAL_quick_save_enabled=true;
		KickShortcut("s");
//		$LOCAL_quick_save_enabled=false;
		$SYSTEM_keydown_s=false;
	}

			if(!#PreSaveFlag){
				//SelectSave();
			}
	
	$INPUT_WHILE=1;
	while($INPUT_WHILE==1)
	{
		$S4TimeWhile=0;
		$pname="SP4�^�C�}�[";
		CreateProcess($pname, 150, 0, 0, "S4Timer");
		SetAlias($pname,$pname);
		Request($pname,Start);
		select
		{
			if($S4TimeWhile==2){$INPUT_WHILE=12;$SetChoiceSelect=1;break;}
			if($SYSTEM_skip||$SYSTEM_text_auto){
				$SYSTEM_skip=false;
				$SYSTEM_text_auto=false;
			}
			if($S4CountIN==1){
				case @S4selL{$INPUT_WHILE=10;$SetChoiceSelect=0;}
				case @S4selR{$INPUT_WHILE=11;$SetChoiceSelect=0;}
			}
		}
		Request($pname,Stop);
		Delete($pname);
	}
	Delete("S4sel*");

	$backlogstr="";
	if($INPUT_WHILE==10){$backlogstr="  It's fine to rest ";
	}else if($INPUT_WHILE==11){$backlogstr=" It's better to stop now ";
	}else{$backlogstr="  Don't choose either ";}
	$backlogstr="�y"+$backlogstr+"�z";
	SetBacklog("�@",null,null);
	SetBacklog($backlogstr,null,null);
	SetBacklog("�@",null,null);

	//if($SetChoiceSelect==1){
		S4Break();
	//}

	$SYSTEM_backlog_lock = false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_auto_lock = false;
	$SYSTEM_show_cursor = false;
	$SYSTEM_text_erase_lock = false;
	if(!$�G�L�X�g���^�C�g��){
		$SYSTEM_backselect_lock =false;
	}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	$PLACE_select=false;

}

function S4Lover()
{
	$ltime=1000;
	begin:

	$WHILEINL=1;
	while($WHILEINL>0){

		$WHILEINL=1;
		Fade("@S4Lgear2",0,1000,null,false);
		Fade("@S4Lgear1",0,0,null,true);
		Wait($ltime);
		
		$WHILEINL=2;
		Fade("@S4Lgear1",0,1000,null,false);
		Fade("@S4Lgear2",0,0,null,true);
		Wait($ltime);
	}
}

function S4Lleave()
{
	begin:
	if($WHILEINL==1){
		Fade("@S4Lgear2",0,1000,null,false);
		Fade("@S4Lgear1",0,0,null,true);
	}else{
		Fade("@S4Lgear1",0,1000,null,false);
		Fade("@S4Lgear2",0,0,null,true);
	}
}

function S4Rover()
{
	$rtime=1000;
	$rrrt=0;
	begin:

	$WHILEINR=1;
	while($WHILEINR>0){

		$WHILEINR=1;
		Fade("@S4Rgear2",0,1000,null,false);
		Fade("@S4Rgear1",0,0,null,false);
		Rotate("@S4Rgear0",0,0,0,$rrrt,null,true);
		Wait($rtime);
		
		$WHILEINR=2;
		$rrrt=$rrrt+4.5;
		Fade("@S4Rgear1",0,1000,null,false);
		Fade("@S4Rgear2",0,0,null,false);
		Rotate("@S4Rgear0",0,0,0,$rrrt,null,true);
		Wait($rtime);
		
		$rrrt=$rrrt+4.5;
		$rrrt=$rrrt%360;
	}
}

function S4Rleave()
{
	begin:
	if($WHILEINR==1){
		Fade("@S4Rgear2",0,1000,null,false);
		Fade("@S4Rgear1",0,0,null,true);
	}else{
		Fade("@S4Rgear1",0,1000,null,false);
		Fade("@S4Rgear2",0,0,null,true);
	}
}

function S4Timer()
{
	$SYSTEM_keydown_z=false;
	$S4CountTimer=0;
	$S4CountTimerMax=7000+42000-(14000*$�N���A�I����5)-(14000*$�N���A�I����6)-(14000*$�N���A�I����7);
	$S4CountTimerInt=$S4CountTimerMax/7;
	$S4CountCrntInt=$S4CountTimerInt;
	$S4CountNth=0;
	$S4CountIN=1;
	$senut="@S4SE01";
	begin:

	$S4TimeWhile=1;
	while($S4TimeWhile==1){
		//$S5Current=Time();
		$S4CountTimer++;
		if($S4CountTimer>$S4CountTimerMax){$S4TimeWhile=2;
		}else if($S4CountTimer>$S4CountCrntInt){
			$S4CountCrntInt=$S4CountCrntInt+$S4CountTimerInt;
			$S4CountNth++;
			$S4CountIN=0;
			
			Request($senut,Stop);
			$senth=Random(2);//$S4CountNth%2;
			if($senth==1){$senut="@S4SE01";}
			else{$senut="@S4SE02";}
			Request($senut,Play);
			SetVolumeEX($senut, 0, 700, null);
			
			$nutL="@S4L"+String("Crack%02d",$S4CountNth);
			$nutR="@S4R"+String("Crack%02d",$S4CountNth);
			Fade($nutL,0,1000,null,false);
			Fade($nutR,0,1000,null,true);
			//$rnd=Random(100);
			//if($rnd<50){$rndLx=1;}else{$rndLx=0;}
			//$rnd=Random(100);
			//if($rnd<50){$rndLy=1;}else{$rndLy=0;}
			//$rndLx=Random(2)*2-1;$rndLy=Random(2)*2-1;
			//$rndRx=Random(3)-1;$rndRy=Random(3)-1;Wait(128);
			//Shake("@S4L*", 200, $rndLx, $rndLy, 0, 0, 300, null, false);
			//Shake("@S4R*", 200, $rndLx, $rndLy, 0, 0, 300, null, true);
			$S4CountIN=1;//CreateText("S4tt4",10000,10,60,1000,40,"�^�C�}�[��<VALUE name=$S4CountNth>");Draw();
		}
	}
	//CreateText("S4tt4",10000,10,60,1000,40,"�^�C�}�[�I��<VALUE name=$S4CountTimer>");
	/*
	CursorPosition($csrX,$csrY);
	if($csrX<0){$csrX=0;}
	else if($csrX>1024){$csrX=1023;}
	else{$csrX++;}
	if($csrY<0){$csrY=0;}
	else if($csrY>576){$csrY=575;}
	else{$csrY++;}
	MoveCursor($csrX,$csrY);
	
	Draw();
	*/
	$SYSTEM_keydown_z=true;Wait(16);
	$SYSTEM_keydown_z=false;

}

function S4Break()
{
	$braekL=0;$braekR=0;
	if($SetChoiceSelect==1){$braekL=1;$braekR=1;}
	else if($INPUT_WHILE==10){$braekR=1;}
	else if($INPUT_WHILE==11){$braekL=1}

//WaitKey();
	CreateSE("SE01","se����_�K���X_�����04");
	MusicStart("SE01",0,700,0,1000,null,false);

if($braekL==1){
	Fade("S4BreakL*",0,1000,null,false);
	Fade("S4LgearS",0,1000,null,false);
	Fade("S4LCrack*",0,0,null,false);
	Fade("S4LgearC",0,0,null,false);
}
if($braekR==1){
	Fade("S4BreakR*",0,1000,null,false);
	Fade("S4RgearS",0,1000,null,false);
	Fade("S4RCrack*",0,0,null,false);
	Fade("S4RgearC",0,0,null,true);
}
	//Fade("S4LgearS2",0,0,null,false);
	//Fade("S4RgearS2",0,0,null,false);


//WaitKey();
/*
	$mtime=30;
	Move("S4BreakR01",$mtime,559,149,Axl3,false);
	Move("S4BreakR02",$mtime,569,163,Axl3,false);
	Move("S4BreakR03",$mtime,560,154,Axl3,false);
	Move("S4BreakR04",$mtime,551,165,Axl3,false);
	Move("S4BreakR05",$mtime,572,167,Axl3,false);
	Move("S4BreakR06",$mtime,577,157,Axl3,false);
	Move("S4BreakR07",$mtime,571,182,Axl3,false);
	Move("S4BreakR08",$mtime,554,175,Axl3,false);
	Move("S4BreakR09",$mtime,557,177,Axl3,false);
	Move("S4BreakR10",$mtime,560,181,Axl3,false);
	Move("S4BreakR11",$mtime,560,171,Axl3,false);
	Move("S4BreakR12",$mtime,560,160,Axl3,false);
	Move("S4BreakR13",$mtime,561,167,Axl3,false);
	Move("S4BreakR14",$mtime,566,171,Axl3,true);

WaitKey(8);
*/
//return;
$garasu_speed=500;
$garasu_speed2=750;

//	Rotate("garasuef05", 6100, @0, @0, 800, null,false);
//	Rotate("garasuef06", 6100, @0, @0, -700, null,false);

//	Fade("garasuef03", 100, 1000, null, true);
//	Fade("garasuef04", 0, 1000, null, true);
if($braekR==1){
	Fade("S4RgearT", 20, 0, null, false);
	Zoom("S4BreakT", 20, 1100, 1100, null, false);

	Zoom("S4BreakR*", 20, 1100, 1100, null, true);
	Shake("S4BreakR*", 100, 10, 10, 0, 0, 1000, Dxl1, false);

//	Zoom("garasuef05", 0, 200, 200, null, true);
//	Zoom("garasuef06", 0, 200, 200, null, true);

//	Delete("garasuef01");
//	Delete("garasuef02");

//	Fade("garasuef05", 0, 1000, null, false);
//	Fade("garasuef06", 0, 1000, null, false);
/*
	Fade("garasuef_hahen00", 0, 1000, null, true);
	Fade("garasuef_hahen01", 0, 1000, null, true);
	Fade("garasuef_hahen02", 0, 1000, null, true);
	Fade("garasuef_hahen03", 0, 1000, null, true);
	Fade("garasuef_hahen04", 0, 1000, null, true);
	Fade("garasuef_hahen05", 0, 1000, null, true);
	Fade("garasuef_hahen06", 0, 1000, null, true);
	Fade("garasuef_hahen07", 0, 1000, null, true);
	Fade("garasuef_hahen08", 0, 1000, null, true);
	Fade("garasuef_hahen09", 0, 1000, null, true);
	Fade("garasuef_hahen10", 0, 1000, null, true);
	Fade("garasuef_hahen11", 0, 1000, null, true);
*/
//	Fade("garasuef01*", 50, 0, null, false);
	Zoom("S4BreakR*", $garasu_speed, 1500, 1500, Dxl1, false);

	Rotate("S4BreakR01", $garasu_speed, @0, @0, @50, null,false);
	Move("S4BreakR01", $garasu_speed, @-550, @-550, null, false);

	Rotate("S4BreakR02", $garasu_speed, @0, @0, @-300, null,false);
	Move("S4BreakR02", $garasu_speed, @-1200, @0, null, false);

	Rotate("S4BreakR03", $garasu_speed, @0, @0, @300, null,false);
	Move("S4BreakR03", $garasu_speed, @-550, @550, null, false);

	Rotate("S4BreakR04", $garasu_speed, @0, @0, @-280, null,false);
	Move("S4BreakR04", $garasu_speed, @100, @550, null, false);

	Rotate("S4BreakR05", $garasu_speed, @0, @0, @150, null,false);
	Move("S4BreakR05", $garasu_speed, @600, @550, null, false);

	Rotate("S4BreakR06", $garasu_speed, @0, @0, @360, null,false);
	Move("S4BreakR06", $garasu_speed, @750, @-100, null, false);

	Rotate("S4BreakR07", $garasu_speed, @0, @0, @-160, null,false);
	Move("S4BreakR07", $garasu_speed, @650, @-550, null, false);

	Rotate("S4BreakR08", $garasu_speed, @0, @0, @260, null,false);
	Move("S4BreakR08", $garasu_speed, @-60, @-550, null, false);

	Zoom("S4BreakR09", $garasu_speed2, 3500, 3500, null, false);
	Rotate("S4BreakR09", $garasu_speed2, @760, @720, @90, null,false);
	Move("S4BreakR09", $garasu_speed2, @-450, @250, null, false);

	Zoom("S4BreakR10", $garasu_speed2, 1000, 1000, null, false);
	Rotate("S4BreakR10", $garasu_speed2, @-760, @720, @-80, null,false);
	Move("S4BreakR10", $garasu_speed2, @250, @150, null, false);

	Zoom("S4BreakR11", $garasu_speed2, 8500, 8500, null, false);
	Rotate("S4BreakR11", $garasu_speed2, @360, @100, @50, null,false);
	Move("S4BreakR11", $garasu_speed2, @-250, @-250, null, false);

	Zoom("S4BreakR12", $garasu_speed2, 4500, 4500, null, false);
	Rotate("S4BreakR12", $garasu_speed2, @240, @-720, @100, null,false);
	Move("S4BreakR12", $garasu_speed2, @250, @-150, null, false);

	Zoom("S4BreakR13", $garasu_speed2, 1000, 1000, null, false);
	Rotate("S4BreakR13", $garasu_speed2, @240, @-720, @100, null,false);
	Move("S4BreakR13", $garasu_speed2, @250, @-550, null, false);

	Zoom("S4BreakR14", $garasu_speed2, 6500, 6500, null, false);
	Rotate("S4BreakR14", $garasu_speed2, @240, @-720, @100, null,false);
	Move("S4BreakR14", $garasu_speed2, @250, @550, null, false);

	Fade("S4BreakR09", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakR10", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakR11", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakR12", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakR02", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakR13", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakR14", $garasu_speed2, 0, Axl3, false);
}
if($braekL==1){
	Fade("S4LgearT", 20, 0, null, false);
	Zoom("S4LgearT", 20, 1100, 1100, null, false);

	Zoom("S4BreakL*", $garasu_speed, 1500, 1500, Dxl1, false);

	Rotate("S4BreakL01", $garasu_speed, @0, @0, @50, null,false);
	Move("S4BreakL01", $garasu_speed, @-550, @-550, null, false);

	Rotate("S4BreakL02", $garasu_speed, @0, @0, @-300, null,false);
	Move("S4BreakL02", $garasu_speed, @-1200, @0, null, false);

	Rotate("S4BreakL03", $garasu_speed, @0, @0, @300, null,false);
	Move("S4BreakL03", $garasu_speed, @-550, @550, null, false);

	Rotate("S4BreakL04", $garasu_speed, @0, @0, @-280, null,false);
	Move("S4BreakL04", $garasu_speed, @100, @550, null, false);

	Rotate("S4BreakL05", $garasu_speed, @0, @0, @150, null,false);
	Move("S4BreakL05", $garasu_speed, @600, @550, null, false);

	Rotate("S4BreakL06", $garasu_speed, @0, @0, @360, null,false);
	Move("S4BreakL06", $garasu_speed, @1250, @-100, null, false);

	Rotate("S4BreakL07", $garasu_speed, @0, @0, @-160, null,false);
	Move("S4BreakL07", $garasu_speed, @650, @-550, null, false);

	Rotate("S4BreakL08", $garasu_speed, @0, @0, @260, null,false);
	Move("S4BreakL08", $garasu_speed, @-60, @-550, null, false);

	Zoom("S4BreakL09", $garasu_speed2, 3500, 3500, null, false);
	Rotate("S4BreakL09", $garasu_speed2, @760, @720, @90, null,false);
	Move("S4BreakL09", $garasu_speed2, @-450, @250, null, false);

	Zoom("S4BreakL10", $garasu_speed2, 1000, 1000, null, false);
	Rotate("S4BreakL10", $garasu_speed2, @-760, @720, @-80, null,false);
	Move("S4BreakL10", $garasu_speed2, @250, @150, null, false);

	Zoom("S4BreakL11", $garasu_speed2, 8500, 8500, null, false);
	Rotate("S4BreakL11", $garasu_speed2, @360, @100, @50, null,false);
	Move("S4BreakL11", $garasu_speed2, @-250, @-250, null, false);

	Zoom("S4BreakL12", $garasu_speed2, 4500, 4500, null, false);
	Rotate("S4BreakL12", $garasu_speed2, @240, @-720, @100, null,false);
	Move("S4BreakL12", $garasu_speed2, @250, @-150, null, false);

	Zoom("S4BreakL13", $garasu_speed2, 1000, 1000, null, false);
	Rotate("S4BreakL13", $garasu_speed2, @240, @-720, @100, null,false);
	Move("S4BreakL13", $garasu_speed2, @250, @-550, null, false);

	Zoom("S4BreakL14", $garasu_speed2, 6500, 6500, null, false);
	Rotate("S4BreakL14", $garasu_speed2, @240, @-720, @100, null,false);
	Move("S4BreakL14", $garasu_speed2, @250, @550, null, false);

	Fade("S4BreakL09", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakL10", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakL11", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakL12", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakL02", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakL13", $garasu_speed2, 0, Axl3, false);
	Fade("S4BreakL14", $garasu_speed2, 0, Axl3, false);

}
//	Zoom("garasuef05", 6000, 1000, 1000, Axl3, false);
//	Zoom("garasuef06", 6000, 1000, 1000, Axl3, false);

//	Fade("garasuef03", 50, 0, null, true);

//	Fade("garasuef03", 6000, 1000, Axl3, false);

if($garasu_speed>$garasu_speed2){Wait($garasu_speed);}
else{Wait($garasu_speed2);}
//	Wait(4000);
//	Zoom("garasuef05", 2100, 40000, 40000, null, false);
//	Zoom("garasuef06", 2100, 40000, 40000, null, true);

Wait(500);


//WaitKey();WaitKey();

}

//======================================================================//
.//���@�F����I����
//======================================================================//
/*
�E�r�d�A�{�^�����̓��ꍞ��
�E�@�����e�̃E�B���h�E����Ɠ���
�E�\�I�����A���s���̌���
�E�I��������̌���
*/

function S5Set()
{
	S5SetQNumary();
	S5SetQPosary();
//	S5SetChoiceBase();
	S5LoadImage();
	SP5SetQDefault();
}
function S5EnterSelect()
{
	//�`�攭���̈א�΁I
	Wait(16);

	$PLACE_select=true;
	#PreSaveFlag=true;

	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_menu_lock=true;
	$SYSTEM_backlog_lock = true;
	$SYSTEM_text_erase_lock = true;
	$SYSTEM_skip_lock = true;
	$SYSTEM_text_auto_lock = true;
	$SYSTEM_backselect_lock = true;
//
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	#SYSTEM_skip_express_minimum_time=0;

	$SYSTEM_menu_lock=false;
//
	$LOCAL_keydown_left=false;
	$LOCAL_keydown_right=false;
	$LOCAL_keydown_up=false;
	$LOCAL_keydown_down=false;
	$LOCAL_mousewheel_up=false;
	$LOCAL_mousewheel_down=false;

	$SYSTEM_keydown_left=false;
	$SYSTEM_keydown_right=false;
	$SYSTEM_keydown_up=false;
	$SYSTEM_keydown_down=false;
	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	//���I�����J�[�\����~�o�O�p
	CursorPosition($X���W�I��,$Y���W�I��);
	$Y���W�I��+=5;
	MoveCursor($X���W�I��,$Y���W�I��);
	Wait(16);

	$SYSTEM_show_cursor = true;
	$SYSTEM_last_text = "�@";//$LOCAL_last_text2;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;


}
function S5ExitSelect()
{
	$SYSTEM_backlog_lock = false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_auto_lock = false;
	$SYSTEM_show_cursor = false;
	$SYSTEM_text_erase_lock = false;
	if(!$�G�L�X�g���^�C�g��){
		$SYSTEM_backselect_lock =false;
	}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	$PLACE_select=false;

}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//����葼�z�񏉊���
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
function S5SetQNumary()
{
	//���ԍ��p�̔z��
	DeleteArray($QNum_ARY);
	Array($QNum_ARY);
	
	//�L���̂U��i0�`5�j
	$i=0;
	while($i<6){
		$QNum_ARY[0][$i]=$i;
		$i++;
	}
	//��W�̂P�S��i6�`19�j
	$i=0;
	while($i<14){
		$QNum_ARY[1][$i]=($i+6);
		$i++;
	}
	//�f�t�H���g�P�O��
	$i=0;
	while($i<10){
		$QNum_ARY[2][$i]=$i;
		$i++;
	}
	//���X�^�b�N�P�O��
	$i=0;
	while($i<10){
		$QNum_ARY[3][$i]=($i+10);
		$i++;
	}
//return;

/**/
//SetFont("�l�r �S�V�b�N", 10, FFFFFF, b51020, 500, AROUND);
//DrawArray(0,6);Draw();WaitKey();
//DrawArray(1,14);Draw();WaitKey();
	CreateRandomAry(6,100);//DrawTempArray(6,0);Draw();WaitKey();
	//CalcTempArray(6,0,100);//DrawTempArray(6,0);Draw();WaitKey();
/*
	$i=0;
	while($i<6){
		$QNum_ARY[2][$i]=$tempary[0][$i]-100;
		$i++;
	}
//DrawArray(2,10);Draw();WaitKey();
	CreateRandomAry(14,106);//DrawTempArray(14,0);Draw();WaitKey();
	$i=6;
	$j=0;
	while($i<10){
		$QNum_ARY[2][$i]=$tempary[0][$j]-100;
		$i++;$j++;
	}
//DrawArray(2,10);Draw();WaitKey();
*/

	$QNum_ARY[2][0]=$tempary[0][5]-100;
	
	$i=0;
	while($i<5){
		$QNum_ARY[4][$i]=$tempary[0][$i]-100;
		$i++;
	}
	CreateRandomAry(14,106);
	//$i=5;$i++;
	$i=0;
	while($i<4){
		$QNum_ARY[5][$i]=$tempary[0][$i]-100;
		$i++;
	}
//DrawTempArray(14,0);DrawArray(4,5);DrawArray(5,4);Draw();WaitKey();

	$max4=5;$max5=4;$i4=0;$i5=0;$i=1;
	while($i<10){
		$arynth=0;
		if($i4==$max4){$arynth=5;
		}else if($i5==$max5){$arynth=4;
		}else{
			$rnd=Random(100);
			if($rnd<50){$arynth=4;
			}else{$arynth=5;}
		}
		if($arynth==4){$QNum_ARY[2][$i]=$QNum_ARY[4][$i4];$i4++;
		}else if($arynth==5){$QNum_ARY[2][$i]=$QNum_ARY[5][$i5];$i5++;}
		
		$i++;
	}
//DrawArray(2,10);Draw();WaitKey();

	$i=0;
	$j=4;
	while($i<10){
		$QNum_ARY[3][$i]=$tempary[0][$j]-100;
		$i++;$j++;
	}
//DrawArray(3,10);Draw();WaitKey();

	$QNum_ARY[4][0]=0;//�e���|�����p
	$QNum_ARY[5][0]=0;//�e���|�����p

	//���X�^�b�N�P�O�₪�Ȃ��Ȃ������̍ăX�^�b�N�A�g���܂킵
	$QNum_ARY[6][0]=0;
	CreateRandomAry(14,106);//6~19(14)
	$QNum_Stack=0;
	$i=0;
	while($i<14){
		$QNum_ARY[6][$i]=$tempary[0][$i]-100;
		$i++;
	}

	//���s���o�p20~34
	$QNum_ARY[7][0]=0;
	CreateRandomAry(15,120);
	//$i=5;$i++;
	$i=0;
	while($i<15){
		$QNum_ARY[7][$i]=$tempary[0][$i]-100;
		$i++;
	}
//DrawArray(7,15);Draw();WaitKey();
}
function DrawArray($nth,$kmax)
{
	$txt="|";$k=0;
	while($k<$kmax){$txt=$txt+$QNum_ARY[$nth][$k]+"|";$k++;}
	$nut="tta"+$nth;
	$myy=40+(20*$nth);
	CreateText($nut,10000,10,$myy,1000,40,$txt);
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//���I�����{�^����z�u
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//

function S5SetChoiceBase()
{
	//�`�攭���̈א�΁I
	Wait(16);

	$PLACE_select=true;
	#PreSaveFlag=true;

	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_menu_lock=true;
	$SYSTEM_backlog_lock = true;
	$SYSTEM_text_erase_lock = true;
	$SYSTEM_skip_lock = true;
	$SYSTEM_text_auto_lock = true;
	$SYSTEM_backselect_lock = true;

	//�����b�N�ݒu
	//LockVideo(true);


//	S5LoadImage();
//	SP5SetQDefault();


	//�����b�N����
	//LockVideo(false);

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	#SYSTEM_skip_express_minimum_time=0;

	if(!$�G�L�X�g���^�C�g��){
		Save(9999);
	}
	//if($GameName!="a0_01_01.nss"){
		$SYSTEM_menu_lock=false;
		//Boxframe();
	//}

	$LOCAL_keydown_left=false;
	$LOCAL_keydown_right=false;
	$LOCAL_keydown_up=false;
	$LOCAL_keydown_down=false;
	$LOCAL_mousewheel_up=false;
	$LOCAL_mousewheel_down=false;

	$SYSTEM_keydown_left=false;
	$SYSTEM_keydown_right=false;
	$SYSTEM_keydown_up=false;
	$SYSTEM_keydown_down=false;
	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	//���I�����J�[�\����~�o�O�p
	CursorPosition($X���W�I��,$Y���W�I��);
	$Y���W�I��+=5;
	MoveCursor($X���W�I��,$Y���W�I��);
	Wait(16);

	$SYSTEM_show_cursor = true;
	$SYSTEM_last_text = "�@";//$LOCAL_last_text2;//�@���I

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;


	//���h���}�_�i�I������O�ŃN�C�b�N�Z�[�u�j//�@���I
	if(#quick_save_enabled){
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
		$SYSTEM_text_auto=false;
		#SYSTEM_skip_express_minimum_time=0;

		$LOCAL_quick_save_enabled=true;
		KickShortcut("s");
//		$LOCAL_quick_save_enabled=false;
		$SYSTEM_keydown_s=false;
	}



	$S5WHILE=1;
	while($S5WHILE){
		$Stat=0;
		$btnYES="@SP5_"+$Q_NTH+"YES";
		$btnNO ="@SP5_"+$Q_NTH+"NO";
		$nuthit1=$btnYES+"/MouseUsual/hit";
		$nuthit2=$btnNO +"/MouseUsual/hit";
		SetNextFocus($nuthit1,$nuthit2,RIGHT);
		SetNextFocus($nuthit2,$nuthit1,RIGHT);
		SetNextFocus($nuthit1,$nuthit2,LEFT);
		SetNextFocus($nuthit2,$nuthit1,LEFT);
		SetNextFocus($nuthit1,$nuthit2,DOWN);
		SetNextFocus($nuthit2,$nuthit1,DOWN);
		SetNextFocus($nuthit1,$nuthit2,UP);
		SetNextFocus($nuthit2,$nuthit1,UP);
		/*
		$S5SelectIn=0;
		$p1name="SP5�I��";
		CreateProcess($p1name, 150, 0, 0, "S5SelectProcess");
		SetAlias($p1name,$p1name);
		Request($p1name,Start);
		*/
		$S5TimeWhile=0;
		$p2name="SP5�^�C�}�[";
		CreateProcess($p2name, 150, 0, 0, "S5Timer");
		SetAlias($p2name,$p2name);
		Request($p2name,Start);

		//Draw();WaitKey();
		//while($S5SelectIn==1){}

		select{
			if($SYSTEM_skip||$SYSTEM_text_auto){
				$SYSTEM_skip=false;
				$SYSTEM_text_auto=false;
			}
			if($S5TimeWhile==2){$selbtn=0;break;}//CreateText("tt4", 200, 10, 100, 500, 40, "timereBreak");
			case $btnYES{$selbtn=1;}
			case $btnNO	{$selbtn=2;}
		}
		
		$btnYES="";$btnNO ="";
		if($selbtn>0){S5SelectBtn($selbtn);}

		//CreateText("tt5",10000,10,200,1000,40,"�^�C�}�[�I���F<VALUE name=$S5Time>(<VALUE name=$S5Start>)(<VALUE name=$S5Current>)");WaitKey();
		//if($S5WHILE){//
		
		//Fade("@SP5_*YES/MouseUsual/hit",0,600,null,false);
		//Fade("@SP5_*NO/MouseUsual/hit",0,600,null,false);
		if($S5TimeWhile==2){$senut="@S5SE03";$sewait=32;//���Ԑ؂�
		}else{
			if($Stat==1){$senut="@S5SE01";$sewait=32;//����
			}else{$senut="@S5SE02";$sewait=200;}//�s����
		}
		Request($senut,Stop);
		Request($senut,Play);
		SetVolumeEX($senut, 0, 700, null);Wait($sewait);
		if($S5TimeWhile==2){SP5BtnAllFade($Q_NTH,200,600,true);WaitKey(300);}
		
		S5CheckNext();
		//}else{Request($p2name,Stop);Delete($p2name);
		//}
	}
	if($S5TimeWhile==2){SetVolumeEX("@S5*", 1000, 0, null);}
	//$txt="$S5CountTimerMax="+$S5CountTimerMax+";("+$Q_NTH+")";CreateText("tt3", 200, 10, 100, 200, 40, $txt);
	//WaitKey();
	if($Stat==1){//������
		$SetChoiceSelect=0;
	}else{
		$SetChoiceSelect=1;
	}


	$SYSTEM_backlog_lock = false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_auto_lock = false;
	$SYSTEM_show_cursor = false;
	$SYSTEM_text_erase_lock = false;
	if(!$�G�L�X�g���^�C�g��){
		$SYSTEM_backselect_lock =false;
	}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	$PLACE_select=false;

}

function S5Timer()
{
	$SYSTEM_keydown_z=false;
//	$S5Start=MilliTime();//Time();
	$S5CountTimer=0;
	$S5CountTimerMax=2000+(2000*$�@�I����5)+(2000*$�@�I����6)+(2000*$�@�I����7);
	begin:
	
	$S5TimeWhile=1;
	while($S5TimeWhile==1){
		//$S5Current=Time();
		$S5CountTimer++;
		if($S5CountTimer>$S5CountTimerMax){
			$S5TimeWhile=2;
		//	$S5Current=MilliTime();//Time();
		//	$S5Time=$S5Current-$S5Start;
		}
	}
	//CreateText("tt5",10000,10,200,1000,40,"�^�C�}�[�I���F<VALUE name=$S5Time>(<VALUE name=$S5Start>)(<VALUE name=$S5Current>)");
	/*
	CursorPosition($csrX,$csrY);
	if($csrX<0){$csrX=0;}
	else if($csrX>1024){$csrX=1023;}
	else{$csrX++;}
	if($csrY<0){$csrY=0;}
	else if($csrY>576){$csrY=575;}
	else{$csrY++;}
	MoveCursor($csrX,$csrY);
	*/
	$SYSTEM_keydown_z=true;Wait(16);
	$SYSTEM_keydown_z=false;
	
	//Draw();
	Request("@SP5�I��",Stop);
	Delete("@SP5�I��");
	//$S5SelectIn=0;
	//$S5WHILE=0;
}
function S5SelectProcess()
{
	$S5SelectIn=1;
	begin:
		select{
			if($S5TimeWhile==2){CreateText("tt4", 200, 10, 100, 500, 40, "timereBreak");break;}
			case $btnYES{S5SelectBtn(1);}
			case $btnNO	{S5SelectBtn(2);}
		}
		$S5SelectIn=0;
}


//$typeNum��1:YES,2:NO
function S5SelectBtn($typeNum)
{
	$myq=$QNum_ARY[2][$Q_NTH];
	$ans=$TXT_ARY[$myq][0];
	if($ans==$typeNum){$Stat=1;//����
	}else{$Stat=0;}
	
	if($TXT_ARY[$myq][2]==""){$qstr=$TXT_ARY[$myq][1];}
	else{$qstr=$TXT_ARY[$myq][1]+$TXT_ARY[$myq][2];}
	SetBacklog($qstr, null, null);
	//SetBacklog("�@", null, null);
	Array($ans_str,"/","�x�d�r","�m�n");
	$astr="�y"+$ans_str[$typeNum]+"�z";
	SetBacklog($astr, null, null);
	SetBacklog("�@", null, null);

}
function S5CheckNext()
{
	$clicknut="@SP5_"+$Q_NTH+"*/MouseClick/img";
	if($Stat==1){
		SP5BtnFade($Q_NTH,200,0,false);
		Fade($clicknut,200,0,null,true);
		$nut="@SP5_"+$Q_NTH+"*";
		Delete($nut);
		if($Q_NTH==0){
			//�Ō�̖��𐳉�
			$S5WHILE=0;
		}else{
			$Q_NTH--;
			SP5BtnFade($Q_NTH,200,1000,true);
		}
	}else{
		if($Q_NTH<14){
			$cntq=Count($QNum_ARY[3]);
			if($cntq==0){
				$stack_q_nth=$Q_NTH;
				//CreateText("tt21", 200, 10, 10, 500, 40, "(1)Q_NTH=<VALUE name=$Q_NTH>;stack_q_nth=<VALUE name=$stack_q_nth>;");Draw();WaitKey();
				//CreateText("tt21", 200, 10, 10, 500, 40, "(2)Q_NTH=<VALUE name=$Q_NTH>;stack_q_nth=<VALUE name=$stack_q_nth>;");Draw();WaitKey();
				//���X�g�b�N���Ȃ�//$S5WHILE=0;//6~19
				//CreateRandomAry(14,106);
				//CreateText("tt21", 200, 10, 10, 500, 40, "(3)Q_NTH=<VALUE name=$Q_NTH>;stack_q_nth=<VALUE name=$stack_q_nth>;");Draw();WaitKey();
				$i=0;
				while($i<10){
					$QNum_ARY[3][$i]=$QNum_ARY[6][$QNum_Stack];//$tempary[0][$i]-100;
					$i++;$QNum_Stack++;
					if($QNum_Stack>13){$QNum_Stack=0;}
				}
				//CreateText("tt21", 200, 10, 10, 500, 40, "(4)Q_NTH=<VALUE name=$Q_NTH>;stack_q_nth=<VALUE name=$stack_q_nth>;");Draw();WaitKey();
				//DrawArray(6,14);//Draw();WaitKey();//DrawArray(3,10);//Draw();WaitKey();
				$cntq=Count($QNum_ARY[3]);
			}
			Fade($clicknut,0,0,null,false);
			$Q_NTH++;
			$dnth=$cntq-1;
			$QNum_ARY[2][$Q_NTH]=$QNum_ARY[3][$dnth];
			DeleteArray($QNum_ARY[3][$dnth]);
			SP5SetQ($Q_NTH,1);
			/*
	$k=0;$txt="|";
	$cnt2=Count($QNum_ARY[2]);
	while($k<$cnt2){$txt=$txt+$QNum_ARY[2][$k]+"|";$k++;}
	$txt=$txt+"("+$cnt2+")";
	CreateText("tt8",10000,10,80,500,40,$txt);
	$k=0;$txt="|";
	$cnt3=Count($QNum_ARY[3]);
	while($k<$cnt3){$txt=$txt+$QNum_ARY[3][$k]+"|";$k++;}
	$txt=$txt+"("+$cnt3+")";
	CreateText("tt9",10000,10,100,500,40,$txt);
			*/
		}else{
			//����ȏ�͂Ȃ�
			$S5WHILE=0;
			//���o��̖��\��
			S5ShowEndQ();
		}
	}
//CreateText("tt21", 200, 10, 10, 500, 40, "Q_NTH=<VALUE name=$Q_NTH>;Stat=<VALUE name=$Stat>;");Draw();WaitKey();
}
//���o��̖��\��(20~34)
function S5ShowEndQ()
{
	$i=0;
	$j=20;
	while($i<16){
		$QNum_ARY[2][$j]=$QNum_ARY[7][$i];
		$i++;$j++;
	}
	//DrawArray(2,35);Draw();WaitKey();$S5se_alert
	$i=20;
	while($i<35){
		SP5SetQ($i,0);
		$senut=String("S5SE%02d",$i);
		CreateSE($senut,$S5se_alert);
		MusicStart($senut,0,700,0,1000,null,false);
		Wait(32);
		$i++;//WaitKey();
	}
}
function S5SetQPosary()
{
	//��_���W�l�p�̔z��
	DeleteArray($POSX_ARY);
	DeleteArray($POSY_ARY);
	Array($POSX_ARY, 347, 99,369,580,580,  702,  13, 41,347,306, 166,545,142,512,384, 262,573,618,238,400,  728,-57,753,340,-53, 744,-59,513,777,526, 238,145,-68,566,239);
	Array($POSY_ARY, 183, 26, 61,    0,302,  187, 166,352,376,209, 114, 90,300,292,178,  51,127,308,237,200,  388,-49, 95,-60,396,  -41,236,407,245,-43, 417,-43, 77,197,242);
}

function SP5SetQDefault()
{
	CreateSE("S5SE01","se����_�G���x�[�^_�d�q��01");//se����_�R�C��_���쉹01//SE_����_PC_�`���b�g_�Q����(CH)
	CreateSE("S5SE02","se����_�R�C��_���쉹02");
	$S5se_alert="se����_�R�C��_�A���[�g";
	CreateSE("S5SE03",$S5se_alert);//sgse071(sg)
	$S5se_open="se����_�R�C��_�ʐM�Ւf01";
	CreateSE("S5SE04",$S5se_open);

	//0:00	//1~3:01,02	//4~6:03,04	//7,8:05	//9:06	//10~13:07	//14:08
	$i=0;
	while($i<9){
		SP5SetQ($i,0);
		
		$i++;
	}
	//SP5SetQ(9,1);
	//MoveCursor(474,300);


}
function SP5SetQ($nth,$bool)
{
	$myq=$QNum_ARY[2][$nth];
	$myx=$POSX_ARY[$nth];
	$myy=$POSY_ARY[$nth];
	SP5SetBaseQ($nth,$myq,$myx,$myy,$bool);
	Fade("@SP5_*/MouseOver/img",0,0,null,false);
	Fade("@SP5_*/MouseClick/img",0,0,null,true);
	if($nth>0){
		$prenth=$nth-1;
		SP5BtnFade($prenth,0,600,false);
	}

		$seopennut=String("S5SEopen%02d",$nth);
		CreateSE($seopennut,$S5se_open);

	if($bool==1){//���E�B���h�E�Y�[���\��
		$nuthd="@SP5_"+$nth;
		$numnut=$nuthd+"*";
		Fade($numnut,0,0,null,true);
		$btnYnut=$nuthd+"YES/MouseUsual/hit";
		$btnNnut=$nuthd+"NO/MouseUsual/hit";
		Fade($btnYnut,0,0,null,false);
		Fade($btnNnut,0,0,null,false);
		$basenut=$nuthd+"base";
		Zoom($basenut,0,0,0,null,true);

		MusicStart($seopennut,0,700,0,1000,null,false);
		//Wait(32);
		Fade($basenut,0,1000,null,false);
		Zoom($basenut,150,1000,1000,Axl3,true);
		$txtnut=$nuthd+"t*";
		Fade($btnYnut,0,1000,null,false);
		Fade($btnNnut,0,1000,null,false);
		Fade($txtnut,0,1000,null,true);
		
	}else{
		MusicStart($seopennut,0,700,0,1000,null,false);
		Wait(32);
	}
	//�����
	$Q_NTH=$nth;
	//Draw();
	//Wait(8);
}
function SP5BtnFade($bnth,$ftime,$fadenum,$�҂�)
{
	$nut="@SP5_"+$bnth+"base";
	Fade($nut,$ftime,$fadenum,null,false);
	$nut="@SP5_"+$bnth+"t*";
	Fade($nut,$ftime,$fadenum,null,false);
	$nut="@SP5_"+$bnth+"*/MouseOver/img";
	Fade($nut,$ftime,0,null,false);
	$nut="@SP5_"+$bnth+"*/MouseClick/img";
	Fade($nut,$ftime,0,null,false);
	$nut="@SP5_"+$bnth+"*/MouseUsual/hit";
	Fade($nut,$ftime,$fadenum,null,$�҂�);
	//CreateText("tt0", 200, 10, 10, 500, 40, "|<VALUE name=$nut>|");
}
function SP5BtnAllFade($bnth,$ftime,$fadenum,$_�҂�)
{
//	$nut="@SP5_"+$bnth+"*";
//	Fade($nut,$ftime,$fadenum,null,false);
	$nut="@SP5_"+$bnth+"base";
	Fade($nut,$ftime,$fadenum,null,false);
	$nut="@SP5_"+$bnth+"t*";
	Fade($nut,$ftime,$fadenum,null,false);
	$nut="@SP5_"+$bnth+"*/MouseOver/img";
	Fade($nut,$ftime,0,null,false);
	$nut="@SP5_"+$bnth+"*/MouseClick/img";
	Fade($nut,$ftime,0,null,false);
	$nut="@SP5_"+$bnth+"*/MouseUsual/hit";
	Fade($nut,$ftime,$fadenum,null,$_�҂�);
}

//�{�^���Q�K�w�ԍ�(���x��)�A���ԍ��A����w�A�x�A�����x�ݒ�
function SP5SetBaseQ($baseN,$qNth,$baseX,$baseY,$fdbl)
{
	$hierarchy=200+$baseN;
	$levelN=$baseN;
	$ysx=$baseX+58;$btny=$baseY+137;
	$nox=$baseX+168;
	$basename="SP5_"+$baseN;
	$nutname=$basename+"base";
	$rdm=Random(100);//CreateText("tt0", 200, 10, 10, 200, 40, "|<VALUE name=$rdm>|");
	if($levelN==0){$lvln=0;
	}else if($levelN<4){
		if($rdm<50){$lvln=1;}
		else {$lvln=2;}
	}else if($levelN<7){
		if($rdm<50){$lvln=3;}
		else {$lvln=4;}
	}else if($levelN<9){$lvln=5;
	}else if($levelN<10){$lvln=6;
	
	
	}else if($levelN<14){$lvln=7;
	}else{$lvln=8;}
	$fname="cg/sys/select/sp05/�@����I��_0"+$lvln+".png";
	if($fdbl==1){CreateTextureEX($nutname, $hierarchy, $baseX, $baseY, $fname);}
	else{CreateTextureSP($nutname, $hierarchy, $baseX, $baseY, $fname);}
	//SetAlias($nutname,$nutname);
	CreateS5Choice($basename,"YES",$hierarchy,$ysx,$btny);
	CreateS5Choice($basename,"NO",$hierarchy,$nox,$btny);

	$ttx=$baseX+78;
	$t1y=$baseY+63;
	$t1=$TXT_ARY[$qNth][1];
	$t2=$TXT_ARY[$qNth][2];
	$t1n=Strlen($t1);
	$t2n=Strlen($t2);
	if($t1n>$t2n){$mvx=(11-$t1n)*8;}
	else{$mvx=(11-$t2n)*8;}
	$ttx=$ttx+$mvx;
	
	if($t2n==0){$t1y=$t1y+11;$t2="�@";}
	$t2y=$t1y+22;
	
	SetFont("�l�r �S�V�b�N", 17, FFFFFF, b51020, 300, AROUND);
	$nutname=$basename+"t1";
	CreateText($nutname, $hierarchy, $ttx, $t1y, 180, 40, $t1);SetAlias($nutname,$nutname);
	$nutname=$basename+"t2";
	CreateText($nutname, $hierarchy, $ttx, $t2y, 180, 40, $t2);SetAlias($nutname,$nutname);
	$nutname=$basename+"t*";
	Request($nutname,NoLog);Request($nutname,PushText);

}
function S5LoadImage()
{
	LoadImage("SP5i_YES","cg/sys/select/sp05/�@����I��_O�{�^��.png");
	SetAlias("SP5i_YES","SP5i_YES");
	LoadImage("SP5i_NO", "cg/sys/select/sp05/�@����I��_X�{�^��.png");
	SetAlias("SP5i_NO","SP5i_NO");
	LoadImage("SP5i_YESo","cg/sys/select/sp05/�@����I��_O�{�^���I��.png");
	SetAlias("SP5i_YESo","SP5i_YESo");
	LoadImage("SP5i_NOo", "cg/sys/select/sp05/�@����I��_X�{�^���I��.png");
	SetAlias("SP5i_NOo","SP5i_NOo");
	LoadImage("SP5i_YESc","cg/sys/select/sp05/�@����I��_O�{�^������.png");
	SetAlias("SP5i_YESc","SP5i_YESc");
	LoadImage("SP5i_NOc", "cg/sys/select/sp05/�@����I��_X�{�^������.png");
	SetAlias("SP5i_NOc","SP5i_NOc");
}
function CreateS5Choice($hd,$typ,$hrcy,$x,$y)
{
	$nuthd=$hd+$typ;
	$�D��x=2010;
	CreateChoice($nuthd,0,0,0,0,0,0);
	SetAlias($nuthd,$nuthd);
	$nutname=$nuthd+"/MouseUsual/hit";
	$myfile="@SP5i_"+$typ;
	CreateTexture($nutname, $hrcy, $x,$y, $myfile);
	$nutname=$nuthd+"/MouseOver/img";
	$myfile="@SP5i_"+$typ+"o";
	CreateTexture($nutname, $hrcy, $x,$y, $myfile);
	$nutname=$nuthd+"/MouseOver/se";
	CreateSound($nutname, SE, "sound/se/SE_�V�X�e��_�I����_�I��");
	$nutname=$nuthd+"/MouseClick/img";
	$myfile="@SP5i_"+$typ+"c";
	CreateTexture($nutname, $hrcy, $x,$y, $myfile);
}

function CreateRandomAry($nmax,$nplus)
{
	DeleteArray($rndmary);
	DeleteArray($tempary);
	Array($rndmary);
	Array($tempary);
	
	$i=0;
	while($i<$nmax){
		$rndmary[0][$i]=$i+$nplus;
		$i++;
	}
	
	//DrawRandomArray($nmax,0);Draw();WaitKey();
	
	$i=0;
	while($i<$nmax){
		$cnt=Count($rndmary[$i]);
		$rnd=Random($cnt);
		$num=$rndmary[$i][$rnd];
		$rndmary[$i][$rnd]=-1;
		$tempary[0][$i]=$num;
		
		$j=$i+1;
		//DrawTempArray($j,0);
		//DrawRandomArray($nmax,0);Draw();WaitKey();
		
		$k=0;
		$nn=0;
		while($k<$cnt){
			$num=$rndmary[$i][$k];
			if($num>-1){$rndmary[$j][$nn]=$num;$nn++;}
			$k++;
		}
		$crnd=Count($rndmary[$j]);
		//DrawRandomArray($crnd,$j);Draw();WaitKey();
		$i++;
	}
}

function DrawTempArray($tmax,$tnth)
{
	$txt="tempary("+$tmax+"/"+$tnth+")|";$k=0;
	while($k<$tmax){$txt=$txt+$tempary[$tnth][$k]+"|";$k++;}
	//$txt=$txt+"|"+$cnt0+"-"+$cnt1+"|";
	CreateText("ttat",10000,10,10,1000,40,$txt);
}
function DrawRandomArray($rmax,$rnth)
{
	$txt="rndmary("+$rmax+"/"+$rnth+")|";$k=0;
	while($k<$rmax){$txt=$txt+$rndmary[$rnth][$k]+"|";$k++;}
	//$txt=$txt+"|"+$cnt0+"-"+$cnt1+"|";
	CreateText("ttar",10000,10,30,1000,40,$txt);
}
function CalcTempArray($cmax,$cnth,$ccalc)
{
	$k=0;
	while($k<$cmax){
		$num=$tempary[$cnth][$k];
		$cnum=$num-$ccalc;//�v���X���ƕ�����A���ɂȂ�̂Ń}�C�i�X�v�Z���Ƃ�
		$tempary[$cnth][$k]=$cnum;
		$k++;
	}
}

//======================================================================//
.//���@�����e
//======================================================================//
//maintenance
//"dm0260.nss"//"dm5100.nss"//"dm5330.nss"
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//���J��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
function SetOpenMaintenance($mtyp)
{
	$maintetype=$mtyp;

	if($maintetype==2){	CreateSE("SE01","se����_�R�C��_�A���[�g");
	}else{CreateSE("SE01","se����_�G���x�[�^_�d�q��01");}

	/////���C���t���[��/////
	if($maintetype==2){CreateTextureEX("�G�w�i1", 1000, 512, 288, "cg/sys/coil/mnt/���C���t���[��_�G���[.png");
	}else{CreateTextureEX("�G�w�i1", 1000, 512, 288, "cg/sys/coil/mnt/���C���t���[��.png");}
	SetVertex("�G�w�i1",Center,Middle);
	Zoom("�G�w�i1",0,0,0,null,true);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("@�G�w�i1",0,1000,null,false);
	Move("@�G�w�i1",150,169,38,Axl3,false);
	Zoom("@�G�w�i1",150,1000,1000,Axl3,true);

	CreateMaskEX("�G1�}", 0, 222, 329, "cg/sys/coil/mnt/txt_�}�X�N.png", false);
	$mntx11=680;
	if($maintetype==2){CreateTextureSP("�G1�}/�G��1", 1000, $mntx11, 333, "cg/sys/coil/mnt/txt_�G���[.png");
	}else{CreateTextureSP("�G1�}/�G��1", 1000, $mntx11, 333, "cg/sys/coil/mnt/txt.png");}//234//625x9

//220-625=-405
//680+-405=1085

	CreateProcess("�G�@�����e�o�[1", 0, 0, 0, "MaintenanceBar1");
	SetAlias("�G�@�����e�o�[1","�G�@�����e�o�[1");
	Request("�G�@�����e�o�[1",Start);

}
function MaintenanceBar1()
{
	begin:
	while(1){
		Move("@�G1�}/�G��*",54250,-405,@0,null,true);
		Move("@�G1�}/�G��*",0,680,@0,null,true);
	}
}

function SetOpenSubMaintenance($ptye)
{
	if($maintetype==2){	CreateSE("SE02","se����_�R�C��_�A���[�g");
	}else{CreateSE("SE02","se����_�G���x�[�^_�d�q��01");}

	if($maintetype==2){	CreateSE("SE03","se����_�R�C��_�A���[�g");
	}else{CreateSE("SE03","se����_�G���x�[�^_�d�q��01");}

	if($maintetype==2){	CreateSE("SE04","se����_�R�C��_�A���[�g");
	}else{CreateSE("SE04","se����_�G���x�[�^_�d�q��01");}

	/////���j�^�[�P/////
	LoadImage("�G2���[�^�[","cg/sys/coil/mnt/���j�^�[1_���[�^�[�p�[�c.png");
	if($maintetype==2){	CreateTextureEX("�G�w�i2", 1000, 222, 199, "cg/sys/coil/mnt/���j�^�[1_�G���[.png");
	}else{CreateTextureEX("�G�w�i2", 1000, 222, 199, "cg/sys/coil/mnt/���j�^�[1.png");}//276,157
	SetVertex("�G�w�i2",Center,Middle);
	Zoom("�G�w�i2",0,0,0,null,true);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("@�G�w�i2",0,1000,null,false);
	Move("@�G�w�i2",150,84,121,Axl3,false);
	Zoom("@�G�w�i2",150,1000,1000,Axl3,true);

	if($maintetype!=2){
		CreateWindowEX("�G2��1",98,230,40,60,false);
		CreateTextureSP("�G2��1/�G", 1000, 98, 170, "�G2���[�^�[");
		//w39,h6
		CreateWindowEX("�G2��2",137,230,40,60,false);
		CreateTextureSP("�G2��2/�G", 1000, 137, 170, "�G2���[�^�[");
	
		CreateWindowEX("�G2��3",176,230,40,60,false);
		CreateTextureSP("�G2��3/�G", 1000, 176, 170, "�G2���[�^�[");
	
		CreateWindowEX("�G2��4",215,230,40,60,false);
		CreateTextureSP("�G2��4/�G", 1000, 215, 170, "�G2���[�^�[");
	
		CreateWindowEX("�G2��5",254,230,40,60,false);
		CreateTextureSP("�G2��5/�G", 1000, 254, 170, "�G2���[�^�[");
	
		Fade("@�G2��*/�G",0,750,null,false);
	
		//170,176,182,188,194,200,206,212,218,224
		$mtm=4;
		
		Move("@�G2��1",0,@0,224,null,false);
		Move("@�G2��2",0,@0,224,null,false);
		Move("@�G2��3",0,@0,224,null,false);
		Move("@�G2��4",0,@0,224,null,false);
		Move("@�G2��5",0,@0,224,null,true);Wait($mtm);
		
		Move("@�G2��1",0,@0,218,null,false);
		Move("@�G2��2",0,@0,218,null,false);
		Move("@�G2��3",0,@0,218,null,false);
		Move("@�G2��4",0,@0,218,null,false);
		Move("@�G2��5",0,@0,218,null,true);Wait($mtm);
		
		Move("@�G2��1",0,@0,212,null,false);
		if($ptye!=2){Move("@�G2��2",0,@0,212,null,false);}
		Move("@�G2��3",0,@0,212,null,false);
		Move("@�G2��4",0,@0,212,null,false);
		Move("@�G2��5",0,@0,212,null,true);Wait($mtm);
		
		if($ptye!=2){Move("@�G2��2",0,@0,206,null,false);}
		Move("@�G2��3",0,@0,206,null,false);
		Move("@�G2��4",0,@0,206,null,false);
		Move("@�G2��5",0,@0,206,null,true);Wait($mtm);
		
		if($ptye!=2){Move("@�G2��2",0,@0,200,null,false);}
		Move("@�G2��3",0,@0,200,null,false);
		Move("@�G2��4",0,@0,200,null,false);
		Move("@�G2��5",0,@0,200,null,true);Wait($mtm);
		
		if($ptye!=2){Move("@�G2��2",0,@0,194,null,false);}
		Move("@�G2��3",0,@0,194,null,false);
		Move("@�G2��5",0,@0,194,null,true);Wait($mtm);
		
		if($ptye!=2){Move("@�G2��2",0,@0,188,null,false);}
		Move("@�G2��3",0,@0,188,null,false);
		Move("@�G2��5",0,@0,188,null,true);Wait($mtm);
		
		if($ptye==2){
			Move("@�G2��3",0,@0,182,null,true);Wait($mtm);
			
			Move("@�G2��3",0,@0,176,null,true);Wait($mtm);
		}else{
			Move("@�G2��2",0,@0,182,null,false);
			Move("@�G2��3",0,@0,182,null,true);Wait($mtm);
			
			Move("@�G2��2",0,@0,176,null,true);Wait($mtm);
			
			Move("@�G2��2",0,@0,170,null,true);//Wait(64);
		}
	}

	/////���j�^�[�Q/////

	if($maintetype==2){CreateTextureEX("�G�w�i3", 1000, 821, 110, "cg/sys/coil/mnt/���j�^�[2_�G���[.png");
	}else{CreateTextureEX("�G�w�i3", 1000, 821, 110, "cg/sys/coil/mnt/���j�^�[2.png");}//237,180
	SetVertex("�G�w�i3",Center,Middle);
	Zoom("�G�w�i3",0,0,0,null,true);

	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("@�G�w�i3",0,1000,null,false);
	Move("@�G�w�i3",150,703,20,Axl3,false);
	Zoom("@�G�w�i3",150,1000,1000,Axl3,true);

	if($maintetype!=2){
		CreateWindowEX("�G3��1",716,71,211,79,false);
		CreateTextureEX("�G3��1/�G1", 1000, 715, 71, "cg/sys/coil/mnt/���j�^�[2_�O���t.png");//425,79
		//CreateTextureEX("�G3��1/�G2", 1000, 1140, 71, "cg/sys/coil/mnt/���j�^�[2_�O���t.png");//211,79
		Request("�G3��1/�G*",Smoothing);
		SetVertex("�G3��1/�G*",0,40);
		Fade("@�G3��1/�G*",0,1000,null,false);
		//Rotate("@�G3��1/�G*",0,90,0,0,null,true);
		Zoom("@�G3��1/�G*",0,1000,0,null,true);
	
		if($ptye==2){Zoom("@�G3��1/�G*",150,1000,700,Axl3,true);
		}else{Zoom("@�G3��1/�G*",150,1000,1000,Axl3,true);}
		//Rotate("@�G3��1/�G*",150,30,0,0,Axl3,true);
		//Move("@�G3��1/�G*",16000,@-200,@0,null,false);
	}

	/////���j�^�[�R/////

	if($maintetype==2){CreateTextureEX("�G�w�i4", 1000, 732, 356, "cg/sys/coil/mnt/���j�^�[3_�G���[.png");
	}else{CreateTextureEX("�G�w�i4", 1000, 732, 356, "cg/sys/coil/mnt/���j�^�[3.png");}//344,139
	SetVertex("�G�w�i4",Center,Middle);
	Zoom("�G�w�i4",0,0,0,null,true);

	MusicStart("SE04",0,700,0,1000,null,false);

	Fade("@�G�w�i4",0,1000,null,false);
	Move("@�G�w�i4",150,560,288,Axl3,false);
	Zoom("@�G�w�i4",150,1000,1000,Axl3,true);

}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
..//������
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\//
function CloseMaintenance()
{
	CreateSE("SE01","se����_�R�C��_�ʐM�Ւf01");
	CreateSE("SE02","se����_�R�C��_�ʐM�Ւf01");
	CreateSE("SE03","se����_�R�C��_�ʐM�Ւf01");
	CreateSE("SE04","se����_�R�C��_�ʐM�Ւf01");

	MusicStart("SE01",0,700,0,1000,null,false);

	//���j�^�[�R��
	Move("@�G�w�i4",150,732,356,Axl3,false);
	Zoom("@�G�w�i4",150,0,0,Axl3,true);
	Delete("@�G�w�i4");Wait(64);

	MusicStart("SE02",0,700,0,1000,null,false);

	//���j�^�[�Q��
	Zoom("@�G3��1/�G*",150,1000,0,Axl3,true);
	//Rotate("@�G3��1/�G*",150,90,0,0,null,true);
	Delete("@�G3*");
	Move("@�G�w�i3",150,821,110,Axl3,false);
	Zoom("@�G�w�i3",150,0,0,Axl3,true);
	Delete("@�G�w�i3");Wait(64);

	MusicStart("SE03",0,700,0,1000,null,false);

	//���j�^�[�P��
	Delete("�G2*");
	Move("@�G�w�i2",150,222,199,Axl3,false);
	Zoom("@�G�w�i2",150,0,0,Axl3,true);
	Delete("@�G�w�i2");Wait(64);

	MusicStart("SE04",0,700,0,1000,null,false);

	//���C���t���[����
	Request("@�G�@�����e�o�[1",Stop);
	Delete("@�G�@�����e�o�[1");
	Move("@�G1�}/�G��*",0,@0,@0,null,true);
	
	Delete("@�G1*");
	Move("@�G�w�i1",150,512,288,Axl3,false);
	Zoom("@�G�w�i1",150,0,0,Axl3,true);
	Delete("@�G�w�i1");Wait(64);

}

