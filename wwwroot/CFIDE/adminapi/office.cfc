����  - � 
SourceFile /CFIDE/adminapi/office.cfc )cfoffice2ecfc648845971$funcGETLOCALCONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 	component 3 CFIDE.adminapi.accessmanager 5 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 7 8 coldfusion/runtime/CFPage :
 ; 9 set (Ljava/lang/Object;)V = > coldfusion/runtime/Variable @
 A ? _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; C D
   E checkAdminRoles G java/lang/Object I :coldfusion.serversettings,coldfusion.serversettingssummary K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
   O 	VARIABLES Q java/lang/String S DOCUMENTSERVICE U _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; W X
   Y getOfficeLocation [ getLocalConfig ] metaData Ljava/lang/Object; _ `	  a any c false e &coldfusion/runtime/AttributeCollection g name i access k public m output o 
returntype q hint s (Retunrs local open office configuration. u 
Parameters w ([Ljava/lang/Object;)V  y
 h z getMetadata ()Ljava/lang/Object; this +Lcfoffice2ecfc648845971$funcGETLOCALCONFIG; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       _ `   	  | }  �   "     � b�    �        ~     � �  �   !     ^�    �        ~     � �  �         �    �        ~     � �  �   !     d�    �        ~     � �  �   #     � T�    �        ~     � �  �  o     }+� � :+� ,� :	+� :
-� $� *:-� .:
-(� 2-46� <� B-)� 2--
� FH� JYLS� PW-+� 2--R� TYVS� Z\� J� P��    �   p    } ~      } � �    } � `    } � �    } � �    } � �    } � `    } + ,    }  �    }  � 	   }  � 
 �   j    ' , ( 5 ( 5 ( 7 ( 7 ( 4 ( 4 ( 4 ( 4 ( , ( , ( F ) F ) T ) T ) E ) E ) E ) E ) a + a + a + a + a + a *     �   #     *� 
�    �        ~     �   �   r     T� hY� JYjSY^SYlSYnSYpSYfSYrSYdSYtSY	vSY
xSY� JS� {� b�    �       T ~     � �  �   !     f�    �        ~         ����  -] 
SourceFile /CFIDE/adminapi/office.cfc )cfoffice2ecfc648845971$funcSETLOCALCONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - OFFICEDIRPATH / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 _setCurrentLineNo (I)V ; <
   = 	component ? CFIDE.adminapi.accessmanager A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; O P
   Q checkAdminRoles S java/lang/Object U coldfusion.serversettings W _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Y Z
   [ *coldfusion/runtime/TransientVariableHolder ] &(Lcoldfusion/runtime/NeoPageContext;)V  _
 ^ ` OS b SERVER d java/lang/String f NAME h _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; j k
   l _set '(Ljava/lang/String;Ljava/lang/Object;)V n o
   p &(Ljava/lang/String;)Ljava/lang/Object; O r
   s equalsIgnoreCase u   w _boolean (Ljava/lang/Object;)Z y z coldfusion/runtime/Cast |
 } { toLowerCase  
startsWith � mac � contains � Contents � 	substring � 0 � lastIndexOf � _double (Ljava/lang/Object;)D � �
 } � _Object (D)Ljava/lang/Object; � �
 } � OOPATH � _autoscalarize � r
   � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 } � /Contents/MacOS � concat &(Ljava/lang/String;)Ljava/lang/String; � �
 g � program � /program � /soffice.bin � 
FileExists (Ljava/lang/String;)Z � �
 G � 	VARIABLES � DOCUMENTSERVICE � _resolve � k
   � setOfficeLocation � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
   � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � INVALID_LOCATION_ERROR � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
   � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
   � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � e � bind � o
 ^ � LOCAL_CONFIG_ERROR_ADD � unbind � 
 ^  setLocalConfig metaData Ljava/lang/Object;	  void false
 &coldfusion/runtime/AttributeCollection name access public output 
returntype hint "Sets the local configuration path. 
Parameters REQUIRED true  HINT" <Specifies a fully qualified path to the office installation.$ officeDirPath& ([Ljava/lang/Object;)V (
) getMetadata ()Ljava/lang/Object; this +Lcfoffice2ecfc648845971$funcSETLOCALCONFIG; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; throw4 !Lcoldfusion/tagext/lang/ThrowTag; t14 t15 #Lcoldfusion/runtime/AbortException; t16 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; throw5 t19 t20 t21 LineNumberTable !coldfusion/runtime/AbortExceptionU java/lang/ExceptionW java/lang/ThrowableY <clinit> 	getOutput 1       � �    � �      	 +, 0   "     ��   /       -.   12 0   "     �   /       -.   34 0         �   /       -.   52 0   "     	�   /       -.   67 0   (     
� gY0S�   /       
-.   89 0  �    >+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::
-1� >-@B� H� N-2� >--
� RT� VYXS� \W� ^Y-� $� a:-c-e� gYcSYiS� m� q-7� >--0� tv� VYxS� \� ~���-9� >--9� >--c� t�� V� \�� VY�S� \� ~� �-;� >--0� t�� VY�S� \� ~� J-0-=� >--0� t�� VY�SY-=� >--0� t�� VY�S� \� �g� �S� \� q-�-0� �� ��� �� q� -B� >--0� t�� VY�S� \� ~� J-0-D� >--0� t�� VY�SY-D� >--0� t�� VY�S� \� �g� �S� \� q-�-0� �� ��� �� q-I� >--�� �� ��� �� �� /-K� >--�� gY�S� ��� VY-�� �S� \W� M-� �� �� �:-N� >̶ ���-ض �� �̸ ܶ �� �� � :� ��� ,-T� >--�� gY�S� ��� VY-0� �S� \W� �� �:�:� �:� � ��    h           �� �-� �� �� �:-X� >̶ ���-�� �� �̸ ܶ �� �� � :� �� �� � :� �:��� 	 xl�Vr��V xl�Xr��X xl+Zr�+Z�+Z(+Z+0+Z /   �   >-.    >:;   ><   >=>   >?@   >AB   >C   > + ,   > D   > D 	  > D 
  > /D   >EF   >GH   >I   >JK   >LM   >NO   >PH   >Q   >RO   >S T  j �   / < 1 E 1 E 1 G 1 G 1 D 1 D 1 D 1 D 1 < 1 < 1 V 2 V 2 d 2 d 2 U 2 U 2 U 2 U 2 { 6 { 6 { 6 { 6 x 6 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 9 � 9 � 9 � 9 � 9 � 9 � 9 � 9 � ; � ; � ; � ; � ; � ; = = = =+ =+ =9 =9 =* =* =* =* =B =B =* =* = = = = = = � ;Q ?Q ?Q ?Q ?Z ?Z ?Q ?Q ?Q ?Q ?N ?l Bl Bz Bz Bk Bk B� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� D� Dk B� F� F� F� F� F� F� F� F� F� F� F � 9� I� I� I� I� I� I� I� I� I� I� I� I K K K K KJ NJ N( N� I� T� T{ T{ T{ T � 7� X� X� X k 4 k 3    0   #     *� 
�   /       -.   [  0   �     ��� ³ �� gY�S� �Y� VYSYSYSYSYSYSYSY	SYSY	SY
SY� VY�Y� VYSY!SY#SY%SYiSY'S�*SS�*��   /       �-.   \2 0   "     �   /       -.        ����  - � 
SourceFile /CFIDE/adminapi/office.cfc .cfoffice2ecfc648845971$funcGETREMOTECONFIGHOST  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 	component 3 CFIDE.adminapi.accessmanager 5 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 7 8 coldfusion/runtime/CFPage :
 ; 9 set (Ljava/lang/Object;)V = > coldfusion/runtime/Variable @
 A ? _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; C D
   E checkAdminRoles G java/lang/Object I :coldfusion.serversettings,coldfusion.serversettingssummary K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
   O 	VARIABLES Q java/lang/String S DOCUMENTSERVICE U _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; W X
   Y getOpenOfficeRemoteHost [ getRemoteConfigHost ] metaData Ljava/lang/Object; _ `	  a any c false e &coldfusion/runtime/AttributeCollection g name i access k public m output o 
returntype q hint s "Retunrs remote configuration host. u 
Parameters w ([Ljava/lang/Object;)V  y
 h z getMetadata ()Ljava/lang/Object; this 0Lcfoffice2ecfc648845971$funcGETREMOTECONFIGHOST; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       _ `   	  | }  �   "     � b�    �        ~     � �  �   !     ^�    �        ~     � �  �         �    �        ~     � �  �   !     d�    �        ~     � �  �   #     � T�    �        ~     � �  �  o     }+� � :+� ,� :	+� :
-� $� *:-� .:
-n� 2-46� <� B-o� 2--
� FH� JYLS� PW-q� 2--R� TYVS� Z\� J� P��    �   p    } ~      } � �    } � `    } � �    } � �    } � �    } � `    } + ,    }  �    }  � 	   }  � 
 �   j    m , n 5 n 5 n 7 n 7 n 4 n 4 n 4 n 4 n , n , n F o F o T o T o E o E o E o E o a q a q a q a q a q a p     �   #     *� 
�    �        ~     �   �   r     T� hY� JYjSY^SYlSYnSYpSYfSYrSYdSYtSY	vSY
xSY� JS� {� b�    �       T ~     � �  �   !     f�    �        ~         ����  - � 
SourceFile /CFIDE/adminapi/office.cfc .cfoffice2ecfc648845971$funcGETREMOTECONFIGPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - _setCurrentLineNo (I)V / 0
   1 	component 3 CFIDE.adminapi.accessmanager 5 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; 7 8 coldfusion/runtime/CFPage :
 ; 9 set (Ljava/lang/Object;)V = > coldfusion/runtime/Variable @
 A ? _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; C D
   E checkAdminRoles G java/lang/Object I :coldfusion.serversettings,coldfusion.serversettingssummary K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
   O 	VARIABLES Q java/lang/String S DOCUMENTSERVICE U _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; W X
   Y getOpenOfficeRemotePort [ getRemoteConfigPort ] metaData Ljava/lang/Object; _ `	  a any c false e &coldfusion/runtime/AttributeCollection g name i access k public m output o 
returntype q hint s "Retunrs remote configuration port. u 
Parameters w ([Ljava/lang/Object;)V  y
 h z getMetadata ()Ljava/lang/Object; this 0Lcfoffice2ecfc648845971$funcGETREMOTECONFIGPORT; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getOutput 1       _ `   	  | }  �   "     � b�    �        ~     � �  �   !     ^�    �        ~     � �  �         �    �        ~     � �  �   !     d�    �        ~     � �  �   #     � T�    �        ~     � �  �  o     }+� � :+� ,� :	+� :
-� $� *:-� .:
-v� 2-46� <� B-w� 2--
� FH� JYLS� PW-y� 2--R� TYVS� Z\� J� P��    �   p    } ~      } � �    } � `    } � �    } � �    } � �    } � `    } + ,    }  �    }  � 	   }  � 
 �   j    u , v 5 v 5 v 7 v 7 v 4 v 4 v 4 v 4 v , v , v F w F w T w T w E w E w E w E w a y a y a y a y a y a x     �   #     *� 
�    �        ~     �   �   r     T� hY� JYjSY^SYlSYnSYpSYfSYrSYdSYtSY	vSY
xSY� JS� {� b�    �       T ~     � �  �   !     f�    �        ~         ����  -% 
SourceFile /CFIDE/adminapi/office.cfc *cfoffice2ecfc648845971$funcSETREMOTECONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 
REMOTEHOST / getVariable  (I)Lcoldfusion/runtime/Variable; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 _validateRequiredArg �(Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; 7 8
  9 
REMOTEPORT ; _setCurrentLineNo (I)V = >
   ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
   S checkAdminRoles U java/lang/Object W coldfusion.serversettings Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
   ] *coldfusion/runtime/TransientVariableHolder _ &(Lcoldfusion/runtime/NeoPageContext;)V  a
 ` b 	VARIABLES d java/lang/String f DOCUMENTSERVICE h _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; j k
   l setOpenOfficeRemoteConfig n _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; p q
   r unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; t u coldfusion/runtime/NeoException w
 x v t0 [Ljava/lang/String; any | z {	  ~ findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 x � e � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 ` � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
   � coldfusion/tagext/lang/ThrowTag � throw � setCalledName (Ljava/lang/String;)V � � coldfusion/tagext/GenericTag �
 � � cfthrow � message � REMOTE_CONFIG_ERROR_ADD � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
   � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
   � 
setMessage � �
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
   � unbind � 
 ` � setRemoteConfig � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � ,Sets the remote configuration host and port. � 
Parameters � REQUIRED � true � HINT � .Specifies remote host for office installation. � NAME � 
remoteHost � ([Ljava/lang/Object;)V  �
 � � .Specifies remote port for office installation. � 
remotePort � getMetadata ()Ljava/lang/Object; this ,Lcfoffice2ecfc648845971$funcSETREMOTECONFIG; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t13 ,Lcoldfusion/runtime/TransientVariableHolder; t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; throw6 !Lcoldfusion/tagext/lang/ThrowTag; t18 t19 t20 LineNumberTable !coldfusion/runtime/AbortException java/lang/Exception java/lang/Throwable! <clinit> 	getOutput 1       z {    � �    � �   	  � �  �   "     � ˰    �        � �    � �  �   !     ǰ    �        � �    � �  �         �    �        � �    � �  �   !     Ͱ    �        � �      �   -     � gY0SY<S�    �        � �     �      o+� � :+� ,� :	+� :
-� $� *:-� .:*0� 6� ::*<� 6� ::
-`� @-BD� J� P-a� @--
� TV� XYZS� ^W� `Y-� $� c:-e� @--e� gYiS� mo� XY-� gY0S� sSY-� gY<S� sS� ^W� �� �:�:� y:� � ��      k           �� �-� �� �� �:-h� @�� ���-�� �� ��� �� �� ��  :� �� �� � :� �:� ũ�  � � � � � �  � �\" �J\"PY\"\a\"  �   �   o � �    o   o �   o   o	
   o   o �   o + ,   o    o  	  o  
  o /   o ;   o   o   o   o   o   o �   o   o �    �     ] L ` U ` U ` W ` W ` T ` T ` T ` T ` L ` L ` f a f a t a t a e a e a e a e a � e � e � e � e � e � e � e( h( h h { c { b     �   #     *� 
�    �        � �   #   �   �     �� gY}S� �� �� �� �Y� XY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� XY� �Y� XY�SY�SY�SY�SY�SY�S� �SY� �Y� XY�SY�SY�SY�SY�SY�S� �SS� � ˱    �       � � �   $ �  �   !     ϰ    �        � �        ����  -Z 
SourceFile /CFIDE/adminapi/office.cfc cfoffice2ecfc648845971  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REQUEST Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FACTORY   	   com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - LOCALE / REQUEST.LOCALE 1 _setCurrentLineNo (I)V 3 4
  5 java 7 java.util.Locale 9 CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; ; < coldfusion/runtime/CFPage >
 ? = 
getDefault A java/lang/Object C _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; E F
  G getLanguage I checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V K L
  M 	VARIABLES O java/lang/String Q  coldfusion.server.ServiceFactory S _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V U V
  W DOCUMENTSERVICE Y _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; [ \
  ] getDocumentService _ 
LOCALEFILE a java/lang/StringBuffer c resources/adminapi_ e (Ljava/lang/String;)V  g
 d h _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; j k
  l _String &(Ljava/lang/Object;)Ljava/lang/String; n o coldfusion/runtime/Cast q
 r p append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; t u
 d v .cfm x toString ()Ljava/lang/String; z {
 D | (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � ~ 	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � /CFIDE/adminapi/customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � local_config_error_add � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � %Unable to configure local OpenOffice. � write � g java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � remote_config_error_add � &Unable to configure remote OpenOffice. � invalid_location_error � 7Specified directory is not a valid Office installation. � setLocalConfig Lcoldfusion/runtime/UDFMethod; )cfoffice2ecfc648845971$funcSETLOCALCONFIG �
 � 	 � �	  � SETLOCALCONFIG � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V � �
  � getRemoteConfigHost .cfoffice2ecfc648845971$funcGETREMOTECONFIGHOST �
 � 	 � �	  � GETREMOTECONFIGHOST � setRemoteConfig *cfoffice2ecfc648845971$funcSETREMOTECONFIG �
 � 	 � �	  � SETREMOTECONFIG � getLocalConfig )cfoffice2ecfc648845971$funcGETLOCALCONFIG �
 � 	 � �	  � GETLOCALCONFIG  getRemoteConfigPort .cfoffice2ecfc648845971$funcGETREMOTECONFIGPORT
 	 �	  GETREMOTECONFIGPORT metaData Ljava/lang/Object;
	  _implicitMethods Ljava/util/Map;	  displayname office extends base hint Manages open office settings. Name 	Functions 	 �	 �	 �	 �	 getMetadata ()Ljava/lang/Object; this Lcfoffice2ecfc648845971; LocalVariableTable Code _setImplicitMethods implicitMethods varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; 
getExtends registerUDFs runPage out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module2 mode2 t14 t15 t16 t17 t18 t19 module3 mode3 t22 t23 t24 t25 t26 t27 LineNumberTable java/lang/ThrowableU _getImplicitMethods ()Ljava/util/Map; <clinit> 1     
            ~     � �    � �    � �    � �    �   
   
   	 '( ,   "     ��   +       )*   - � ,   -     +��   +       )*     .     ,   Q     *+,� **+,� � **+,� � �   +        )*     /0    12  3 { ,   "     �   +       )*   4  ,   N     0*� � �*� � �*�� �� �*� �� �*	�� �   +       0)*   5( ,  W    G*� $� *L*� .N**� 02*� 6**� 6**� 6*8:� @B� D� HJ� D� H� N*P� RYS*� 6*8T� @� X*P� RYZS*� 6***� � ^`� D� H� X*P� RYbS� dYf� i*� RY0S� m� s� wy� w� }� X*� �-� �� �:*� 6���� �� �Y� DY�SY�SY�SY�SY�SY*P� RYbS� mS� �� �� �� �Y6� 5*+� �L+�� �� Ě��� � :� �:*+� �L�� �� :� #�� � #:		� Ѩ � :
� 
�:� ԩ*� �-� �� �:* � 6���� �� �Y� DY�SY�SY�SY�SY�SY*P� RYbS� mS� �� �� �� �Y6� 5*+� �L+ض �� Ě��� � :� �:*+� �L�� �� :� #�� � #:� Ѩ � :� �:� ԩ*� �-� �� �:*!� 6���� �� �Y� DY�SY�SY�SY�SY�SY*P� RYbS� mS� �� �� �� �Y6� 5*+� �L+ܶ �� Ě��� � :� �:*+� �L�� �� :� #�� � #:� Ѩ � :� �:� ԩ� -HKVKPKV"kwVqtwV"k�Vqt�Vw��V���V"V"'"V�BNVHKNV�B]VHK]VNZ]V]b]V���V���V�%V"%V�4V"4V%14V494V +     G)*    G67   G8   G + ,   G9:   G;<   G=>   G?   G@   GA> 	  GB> 
  GC   GD:   GE<   GF>   GG   GH   GI>   GJ>   GK   GL:   GM<   GN>   GO   GP   GQ>   GR>   GS T   G   +  +  -  -  *  *  #  #          Z  Z  \  \  Y  Y  Y  Y  G  w  w  v  v  v  v  d  �  �  �  �  �  �  �  �  �  �  �  �  �  G  �  �  �  �      � �  �  �  �  �  �  �  �  �  � !� !� !� !� !� !� !� !n !       ,   #     *� 
�   +       )*   WX ,   "     ��   +       )*   Y  ,   � 	    ��� �� �� �Y� � � �Y� �� � �Y� �� �� �Y� �� ��Y��� �Y
� DYSYSYSYSYSYSYSYSY!SY	� DY�"SY�#SY�$SY�%SY�&SS� ���   +       �)*  T   * 
 � m � m � / � / � ] � ] � ' � ' � u � u           