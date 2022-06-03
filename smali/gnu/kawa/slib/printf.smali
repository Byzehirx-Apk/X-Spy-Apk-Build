.class public Lgnu/kawa/slib/printf;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/printf;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/text/Char;

.field static final Lit12:Lgnu/text/Char;

.field static final Lit13:Lgnu/text/Char;

.field static final Lit14:Lgnu/math/IntNum;

.field static final Lit15:Lgnu/math/IntNum;

.field static final Lit16:Lgnu/math/IntNum;

.field static final Lit17:Lgnu/math/IntNum;

.field static final Lit18:Lgnu/text/Char;

.field static final Lit19:Lgnu/text/Char;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lgnu/text/Char;

.field static final Lit21:Lgnu/text/Char;

.field static final Lit22:Lgnu/text/Char;

.field static final Lit23:Lgnu/text/Char;

.field static final Lit24:Lgnu/text/Char;

.field static final Lit25:Lgnu/text/Char;

.field static final Lit26:Lgnu/text/Char;

.field static final Lit27:Lgnu/text/Char;

.field static final Lit28:Lgnu/text/Char;

.field static final Lit29:Lgnu/text/Char;

.field static final Lit3:Lgnu/text/Char;

.field static final Lit30:Lgnu/text/Char;

.field static final Lit31:Lgnu/text/Char;

.field static final Lit32:Lgnu/text/Char;

.field static final Lit33:Lgnu/lists/PairWithPosition;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/text/Char;

.field static final Lit36:Lgnu/text/Char;

.field static final Lit37:Lgnu/text/Char;

.field static final Lit38:Lgnu/text/Char;

.field static final Lit39:Lgnu/text/Char;

.field static final Lit4:Lgnu/text/Char;

.field static final Lit40:Lgnu/text/Char;

.field static final Lit41:Lgnu/text/Char;

.field static final Lit42:Lgnu/text/Char;

.field static final Lit43:Lgnu/text/Char;

.field static final Lit44:Lgnu/text/Char;

.field static final Lit45:Lgnu/math/IntNum;

.field static final Lit46:Lgnu/text/Char;

.field static final Lit47:Lgnu/text/Char;

.field static final Lit48:Lgnu/math/IntNum;

.field static final Lit49:Lgnu/text/Char;

.field static final Lit5:Lgnu/text/Char;

.field static final Lit50:Lgnu/math/IntNum;

.field static final Lit51:Lgnu/text/Char;

.field static final Lit52:Lgnu/text/Char;

.field static final Lit53:Lgnu/text/Char;

.field static final Lit54:Lgnu/text/Char;

.field static final Lit55:Lgnu/text/Char;

.field static final Lit56:Lgnu/text/Char;

.field static final Lit57:Lgnu/text/Char;

.field static final Lit58:Lgnu/text/Char;

.field static final Lit59:Lgnu/math/IntNum;

.field static final Lit6:Lgnu/text/Char;

.field static final Lit60:Lgnu/math/IntNum;

.field static final Lit61:Lgnu/math/IntNum;

.field static final Lit62:Lgnu/lists/FVector;

.field static final Lit63:Lgnu/lists/PairWithPosition;

.field static final Lit64:Lgnu/mapping/SimpleSymbol;

.field static final Lit65:Lgnu/text/Char;

.field static final Lit66:Lgnu/text/Char;

.field static final Lit67:Lgnu/mapping/SimpleSymbol;

.field static final Lit68:Lgnu/mapping/SimpleSymbol;

.field static final Lit69:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/math/IntNum;

.field static final Lit70:Lgnu/mapping/SimpleSymbol;

.field static final Lit71:Lgnu/mapping/SimpleSymbol;

.field static final Lit72:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/text/Char;

.field static final Lit9:Lgnu/text/Char;

.field public static final fprintf:Lgnu/expr/ModuleMethod;

.field public static final printf:Lgnu/expr/ModuleMethod;

.field public static final sprintf:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clhex$Mnupper$Mncase$Qu:Z

.field public static final stdio$Cliprintf:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clparse$Mnfloat:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clround$Mnstring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "fprintf"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit72:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "stdio:iprintf"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit71:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "stdio:round-string"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit70:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "stdio:parse-float"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit69:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "sprintf"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit68:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "pad"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit67:Lgnu/mapping/SimpleSymbol;

    const/16 v1, 0x2a

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit66:Lgnu/text/Char;

    const/16 v1, 0x3f

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit65:Lgnu/text/Char;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "format-real"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit64:Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "i"

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v4, 0x18f00b

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit63:Lgnu/lists/PairWithPosition;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x0

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x1

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x2

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x3

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x4

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x5

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x6

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/4 v3, 0x7

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0x8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0x9

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0xa

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0xb

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0xc

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0xd

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0xe

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0xf

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const/16 v3, 0x10

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    invoke-static {v1}, Lgnu/lists/FVector;->make([Ljava/lang/Object;)Lgnu/lists/FVector;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    const/4 v1, 0x3

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    const/16 v1, -0xa

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    const/4 v1, 0x6

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit59:Lgnu/math/IntNum;

    const/16 v1, 0x4b

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    const/16 v1, 0x6b

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    const/16 v1, 0x47

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    const/16 v1, 0x67

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    const/16 v1, 0x45

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    const/16 v1, 0x42

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit53:Lgnu/text/Char;

    const/16 v1, 0x62

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit52:Lgnu/text/Char;

    const/16 v1, 0x58

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit51:Lgnu/text/Char;

    const/16 v1, 0x10

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    const/16 v1, 0x78

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit49:Lgnu/text/Char;

    const/16 v1, 0x8

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    const/16 v1, 0x4f

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit47:Lgnu/text/Char;

    const/16 v1, 0x6f

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit46:Lgnu/text/Char;

    const/16 v1, 0xa

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    const/16 v1, 0x55

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit44:Lgnu/text/Char;

    const/16 v1, 0x75

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit43:Lgnu/text/Char;

    const/16 v1, 0x49

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit42:Lgnu/text/Char;

    const/16 v1, 0x44

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit41:Lgnu/text/Char;

    const/16 v1, 0x41

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit40:Lgnu/text/Char;

    const/16 v1, 0x61

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit39:Lgnu/text/Char;

    const/16 v1, 0x53

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit38:Lgnu/text/Char;

    const/16 v1, 0x73

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    const/16 v1, 0x43

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit36:Lgnu/text/Char;

    const/16 v1, 0x63

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit35:Lgnu/text/Char;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    const-string/jumbo v3, "printf"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/printf;->Lit35:Lgnu/text/Char;

    sget-object v2, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit39:Lgnu/text/Char;

    const/16 v4, 0x64

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    move-object/from16 v17, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v17

    sput-object v5, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    const/16 v5, 0x69

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    move-object/from16 v17, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v17

    sput-object v6, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit43:Lgnu/text/Char;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit46:Lgnu/text/Char;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit49:Lgnu/text/Char;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit52:Lgnu/text/Char;

    const/16 v10, 0x66

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    sput-object v11, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    const/16 v11, 0x65

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    sput-object v12, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    sget-object v12, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v16, 0x1b3014

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    const-string/jumbo v14, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v15, 0x1b3010

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const-string/jumbo v13, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v14, 0x1b300c

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string/jumbo v12, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v13, 0x1b3008

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v12, 0x1b2028

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v11, 0x1b2024

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string/jumbo v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v10, 0x1b2020

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string/jumbo v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v9, 0x1b201c

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string/jumbo v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v8, 0x1b2018

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v7, 0x1b2014

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v6, 0x1b2010

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v5, 0x1b200c

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v4, 0x1b2007

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit33:Lgnu/lists/PairWithPosition;

    const/16 v1, 0x68

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit32:Lgnu/text/Char;

    const/16 v1, 0x4c

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit31:Lgnu/text/Char;

    const/16 v1, 0x6c

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit30:Lgnu/text/Char;

    const/16 v1, 0x20

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    const/16 v1, 0x25

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    const/16 v1, 0xc

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit27:Lgnu/text/Char;

    const/16 v1, 0x46

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    const/16 v1, 0x9

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit24:Lgnu/text/Char;

    const/16 v1, 0x54

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit23:Lgnu/text/Char;

    const/16 v1, 0x74

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit22:Lgnu/text/Char;

    const/16 v1, 0xa

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    const/16 v1, 0x4e

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit20:Lgnu/text/Char;

    const/16 v1, 0x6e

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit19:Lgnu/text/Char;

    const/16 v1, 0x5c

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit18:Lgnu/text/Char;

    const/4 v1, -0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    const/16 v1, 0x9

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    const/4 v1, 0x5

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit15:Lgnu/math/IntNum;

    const/4 v1, 0x2

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    const/16 v1, 0x2e

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    sget-object v1, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    sget-object v2, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit30:Lgnu/text/Char;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit38:Lgnu/text/Char;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit41:Lgnu/text/Char;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit31:Lgnu/text/Char;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v12, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v13, 0x4102c

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v12, 0x41028

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v11, 0x41024

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string/jumbo v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v10, 0x41020

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string/jumbo v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v9, 0x4101c

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string/jumbo v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v8, 0x41018

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v7, 0x41014

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v6, 0x41010

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v5, 0x4100c

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v4, 0x41007

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit10:Lgnu/lists/PairWithPosition;

    const/16 v1, 0x30

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    const/16 v1, 0x23

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    const/16 v1, 0x2b

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    const/16 v1, 0x2d

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    const/16 v1, 0x40

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit4:Lgnu/text/Char;

    sget-object v1, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    sget-object v2, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v5, 0x6d027

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v4, 0x6d022

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit2:Lgnu/lists/PairWithPosition;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    const/16 v1, -0xf

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    new-instance v1, Lgnu/kawa/slib/printf;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    invoke-direct {v2}, Lgnu/kawa/slib/printf;-><init>()V

    sput-object v1, Lgnu/kawa/slib/printf;->$instance:Lgnu/kawa/slib/printf;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    sget-object v3, Lgnu/kawa/slib/printf;->$instance:Lgnu/kawa/slib/printf;

    move-object v0, v3

    move-object v3, v0

    const/16 v4, 0x16

    sget-object v5, Lgnu/kawa/slib/printf;->Lit69:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Clparse$Mnfloat:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    move-object v3, v0

    const/16 v4, 0x17

    sget-object v5, Lgnu/kawa/slib/printf;->Lit70:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Clround$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    move-object v3, v0

    const/16 v4, 0x18

    sget-object v5, Lgnu/kawa/slib/printf;->Lit71:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xffe

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    move-object v3, v0

    const/16 v4, 0x19

    sget-object v5, Lgnu/kawa/slib/printf;->Lit72:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xffe

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->fprintf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    move-object v3, v0

    const/16 v4, 0x1a

    sget-object v5, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->printf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v17, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    move-object v3, v0

    const/16 v4, 0x1b

    sget-object v5, Lgnu/kawa/slib/printf;->Lit68:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xffe

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->sprintf:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/printf;->$instance:Lgnu/kawa/slib/printf;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static fprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "port":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "format":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "argsArray":[Ljava/lang/Object;
    new-instance v6, Lgnu/kawa/slib/printf$frame12;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lgnu/kawa/slib/printf$frame12;-><init>()V

    move-object v4, v6

    move-object v6, v4

    move-object v7, v0

    iput-object v7, v6, Lgnu/kawa/slib/printf$frame12;->port:Ljava/lang/Object;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v5, v7

    move-object v3, v6

    .line 544
    .local v3, "args":Lgnu/lists/LList;
    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v7, v4

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    iput-object v7, v6, Lgnu/kawa/slib/printf$frame12;->cnt:Ljava/lang/Object;

    .line 545
    sget-object v6, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v7, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    .line 546
    move-object v8, v4

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame12;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    .line 550
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 551
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame12;->cnt:Ljava/lang/Object;

    move-object v0, v6

    .end local v0    # "port":Ljava/lang/Object;
    return-object v0
.end method

.method public static printf$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "format":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v3, v5

    move-object v2, v4

    .line 554
    .local v2, "args":Lgnu/lists/LList;
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v5, Lgnu/kawa/slib/printf;->fprintf:Lgnu/expr/ModuleMethod;

    sget-object v6, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "format":Ljava/lang/Object;
    return-object v0
.end method

.method public static sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "format":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "argsArray":[Ljava/lang/Object;
    new-instance v6, Lgnu/kawa/slib/printf$frame13;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lgnu/kawa/slib/printf$frame13;-><init>()V

    move-object v4, v6

    move-object v6, v4

    move-object v7, v0

    iput-object v7, v6, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    move-object v3, v6

    .line 557
    .local v3, "args":Lgnu/lists/LList;
    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v7, v4

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    iput-object v7, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 558
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    .line 561
    :goto_0
    move-object v7, v4

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    iput-object v7, v6, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 557
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_0
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v4

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    iput-object v7, v6, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    .line 563
    sget-object v6, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v7, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    .line 564
    move-object v8, v4

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame13;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    .line 583
    move-object v9, v1

    .line 584
    move-object v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 585
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 587
    :goto_1
    move-object v0, v6

    .end local v0    # "str":Ljava/lang/Object;
    return-object v0

    .line 558
    .restart local v0    # "str":Ljava/lang/Object;
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 559
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_1
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    invoke-static {v6}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_2

    .line 560
    const/16 v6, 0x64

    invoke-static {v6}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    .line 561
    :cond_2
    sget-object v6, Lgnu/kawa/slib/printf;->Lit68:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-string/jumbo v10, "first argument not understood"

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v4

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 585
    :cond_3
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 586
    move-object v7, v4

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    move-object v8, v4

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_4

    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    goto :goto_1

    .line 587
    :cond_4
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_2
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x0

    move-object v8, v4

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v5, v9

    :try_start_3
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    invoke-static {v6, v7, v8}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    .line 559
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "make-string"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 562
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "string-length"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 587
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "substring"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "substring"

    const/4 v10, 0x3

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .prologue
    .line 186
    move-object/from16 v2, p0

    .local v2, "out":Ljava/lang/Object;
    move-object/from16 v3, p1

    .local v3, "formatString":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "argsArray":[Ljava/lang/Object;
    new-instance v19, Lgnu/kawa/slib/printf$frame9;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Lgnu/kawa/slib/printf$frame9;-><init>()V

    move-object/from16 v6, v19

    move-object/from16 v19, v6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v20

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v7, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    .line 187
    const-string/jumbo v19, ""

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_61

    .line 189
    sget-object v19, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    .line 190
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v7, v21

    :try_start_0
    check-cast v20, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static/range {v20 .. v20}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v20

    .line 191
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v7, v22

    :try_start_1
    check-cast v21, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v21

    move-object/from16 v22, v6

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v21, v28

    move-object/from16 v22, v27

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v6

    move/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move/from16 v21, v27

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lgnu/kawa/slib/printf$frame9;->fl:I

    move-object/from16 v20, v6

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    .line 193
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    :goto_0
    move-object/from16 v19, v6

    move-object/from16 v8, v19

    .local v8, "closureEnv":Lgnu/kawa/slib/printf$frame9;
    new-instance v19, Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Lgnu/kawa/slib/printf$frame10;-><init>()V

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    move-object/from16 v9, v19

    move-object/from16 v19, v9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    .line 217
    move-object/from16 v19, v6

    sget-object v20, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v21, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    sget-object v19, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 195
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/kawa/slib/printf$frame9;->fl:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v19, v6

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 218
    :goto_1
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda19isEndOfFormat()Z

    move-result v19

    move/from16 v10, v19

    .local v10, "x":Z
    move/from16 v19, v10

    if-eqz v19, :cond_2

    move/from16 v19, v10

    if-eqz v19, :cond_1

    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 541
    .end local v8    # "closureEnv":Lgnu/kawa/slib/printf$frame9;
    .end local v10    # "x":Z
    :goto_2
    move-object/from16 v2, v19

    .end local v2    # "out":Ljava/lang/Object;
    return-object v2

    .line 196
    .restart local v2    # "out":Ljava/lang/Object;
    .restart local v8    # "closureEnv":Lgnu/kawa/slib/printf$frame9;
    :cond_0
    move-object/from16 v19, v6

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v10, v21

    :try_start_2
    check-cast v20, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v10, v22

    :try_start_3
    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v21

    invoke-static/range {v20 .. v21}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    goto :goto_1

    .line 218
    .restart local v10    # "x":Z
    :cond_1
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 222
    sget-object v20, Lgnu/kawa/slib/printf;->Lit18:Lgnu/text/Char;

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 223
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    move-result-object v19

    .line 224
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v12, v19

    .local v12, "tmp":Ljava/lang/Object;
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/slib/printf;->Lit19:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .local v13, "x":Ljava/lang/Object;
    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v10    # "x":Z
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 225
    :goto_3
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 230
    :goto_4
    move-object/from16 v11, v19

    .line 224
    .end local v13    # "x":Ljava/lang/Object;
    .local v11, "x":Ljava/lang/Object;
    move-object/from16 v19, v11

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 231
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .local v7, "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 224
    .end local v7    # "args":Ljava/lang/Object;
    .end local v11    # "x":Ljava/lang/Object;
    .restart local v13    # "x":Ljava/lang/Object;
    :cond_3
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/slib/printf;->Lit20:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 225
    :cond_4
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 224
    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/slib/printf;->Lit22:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 226
    :goto_5
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/slib/printf;->Lit24:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_4

    .line 224
    :cond_5
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/slib/printf;->Lit23:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    goto :goto_5

    .line 226
    :cond_6
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 224
    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 228
    :goto_6
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/slib/printf;->Lit27:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_4

    .line 224
    :cond_7
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    goto :goto_6

    .line 228
    :cond_8
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 224
    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 230
    :cond_9
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_4

    .line 224
    .end local v13    # "x":Ljava/lang/Object;
    .restart local v11    # "x":Ljava/lang/Object;
    :cond_a
    move-object/from16 v19, v11

    goto/16 :goto_2

    .end local v11    # "x":Ljava/lang/Object;
    .end local v12    # "tmp":Ljava/lang/Object;
    .restart local v10    # "x":Z
    :cond_b
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 232
    sget-object v20, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5f

    .line 233
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    move-result-object v19

    .line 234
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 239
    sget-object v24, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .line 240
    sget-object v25, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    .line 243
    move-object/from16 v26, v9

    move-object/from16 v27, v25

    move-object/from16 v28, v26

    move-object/from16 v25, v28

    move-object/from16 v26, v27

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v25, v9

    move-object/from16 v27, v24

    move-object/from16 v28, v25

    move-object/from16 v24, v28

    move-object/from16 v25, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v24, v9

    move-object/from16 v27, v23

    move-object/from16 v28, v24

    move-object/from16 v23, v28

    move-object/from16 v24, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    move-object/from16 v23, v9

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v22, v28

    move-object/from16 v23, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    move-object/from16 v22, v9

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v21, v28

    move-object/from16 v22, v27

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    move-object/from16 v21, v9

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    move-object/from16 v20, v9

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    .line 256
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    move-object/from16 v19, v0

    .line 276
    move-object/from16 v20, v9

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 256
    :goto_7
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .local v11, "tmp":Ljava/lang/Object;
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 409
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    .line 415
    :goto_8
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    move-result-object v19

    goto :goto_7

    .line 409
    :cond_c
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 410
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    goto :goto_8

    :cond_d
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 411
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    goto :goto_8

    :cond_e
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 412
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    goto :goto_8

    :cond_f
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 413
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    goto :goto_8

    .line 415
    :cond_10
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 416
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    :cond_11
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 417
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    .line 419
    :cond_12
    move-object/from16 v19, v9

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/slib/printf$frame10;->lambda22readFormatNumber()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v11, v20

    .end local v11    # "tmp":Ljava/lang/Object;
    :try_start_4
    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 421
    move-object/from16 v19, v9

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    .line 422
    move-object/from16 v19, v9

    sget-object v20, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :cond_13
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 423
    sget-object v20, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_14

    .line 424
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    move-result-object v19

    .line 425
    move-object/from16 v19, v9

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/slib/printf$frame10;->lambda22readFormatNumber()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 426
    :cond_14
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .restart local v11    # "tmp":Ljava/lang/Object;
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit30:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .local v12, "x":Ljava/lang/Object;
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v10    # "x":Z
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_15

    .line 428
    .end local v12    # "x":Ljava/lang/Object;
    :goto_9
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    move-result-object v19

    :cond_15
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 433
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v11, v20

    .end local v11    # "tmp":Ljava/lang/Object;
    :try_start_5
    check-cast v19, Lgnu/text/Char;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static/range {v19 .. v19}, Lkawa/lib/rnrs/unicode;->charDowncase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object v19

    sget-object v20, Lgnu/kawa/slib/printf;->Lit33:Lgnu/lists/PairWithPosition;

    invoke-static/range {v19 .. v20}, Lkawa/lib/lists;->memv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_16

    .line 436
    sget-object v19, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const/16 v22, 0x0

    const-string/jumbo v23, "wrong number of arguments"

    aput-object v23, v21, v22

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const/16 v22, 0x1

    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    const/16 v22, 0x2

    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v20}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 438
    :cond_16
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .restart local v11    # "tmp":Ljava/lang/Object;
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit35:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .restart local v12    # "x":Ljava/lang/Object;
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1c

    .line 441
    :goto_a
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v0, v22

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    check-cast v21, [Ljava/lang/Object;

    :goto_b
    invoke-static/range {v21 .. v21}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1b

    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 426
    .end local v7    # "args":Ljava/lang/Object;
    :cond_17
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit31:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .end local v12    # "x":Ljava/lang/Object;
    .restart local v13    # "x":Ljava/lang/Object;
    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_18

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_15

    goto/16 :goto_9

    :cond_18
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit32:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_15

    goto/16 :goto_9

    .line 438
    .end local v13    # "x":Ljava/lang/Object;
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_19
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit36:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1c

    goto/16 :goto_a

    .line 441
    :cond_1a
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v21, v28

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v22, v28

    move-object/from16 v23, v27

    const/16 v24, 0x0

    move-object/from16 v27, v23

    move/from16 v28, v24

    move/from16 v23, v28

    move-object/from16 v24, v27

    aput-object v24, v22, v23

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v19, v12

    .line 540
    .end local v12    # "x":Ljava/lang/Object;
    :goto_c
    goto/16 :goto_2

    .line 441
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_1c
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1e

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_26

    .line 445
    :goto_d
    sget-object v19, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 446
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    sget-object v19, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v13, v20

    :try_start_6
    check-cast v19, Lgnu/mapping/Symbol;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static/range {v19 .. v19}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v19

    .line 448
    :goto_e
    move-object/from16 v12, v19

    .line 449
    .local v12, "s":Ljava/lang/Object;
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v14, v20

    :try_start_7
    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v19

    move/from16 v13, v19

    .local v13, "x":Z
    move/from16 v19, v13

    if-eqz v19, :cond_21

    move/from16 v19, v13

    if-nez v19, :cond_1d

    .line 451
    :goto_f
    move-object/from16 v19, v12

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v13, v20

    .end local v13    # "x":Z
    :try_start_8
    check-cast v19, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_9

    const/16 v20, 0x0

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v13, v22

    :try_start_9
    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_a

    move-result v21

    invoke-static/range {v19 .. v21}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v12, v19

    .line 452
    .end local v12    # "s":Ljava/lang/Object;
    :cond_1d
    move-object/from16 v19, v6

    sget-object v20, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 454
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v22, v12

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move-object/from16 v14, v23

    :try_start_a
    check-cast v22, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_b

    invoke-static/range {v22 .. v22}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_22

    move-object/from16 v20, v12

    .line 461
    :goto_10
    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .line 452
    .local v13, "x":Ljava/lang/Object;
    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_25

    .line 463
    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 438
    .end local v7    # "args":Ljava/lang/Object;
    .end local v13    # "x":Ljava/lang/Object;
    .local v12, "x":Ljava/lang/Object;
    :cond_1e
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit38:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_26

    goto/16 :goto_d

    .line 446
    :cond_1f
    sget-object v19, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 447
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_20

    const-string/jumbo v19, "(NULL)"

    goto/16 :goto_e

    .line 448
    :cond_20
    sget-object v19, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_e

    .line 449
    .local v12, "s":Ljava/lang/Object;
    .local v13, "x":Z
    :cond_21
    sget-object v19, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 450
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v14, v22

    :try_start_b
    check-cast v21, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_8

    invoke-static/range {v21 .. v21}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1d

    goto/16 :goto_f

    .line 454
    .end local v12    # "s":Ljava/lang/Object;
    .end local v13    # "x":Z
    :cond_22
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_23

    move-object/from16 v20, v12

    sget-object v21, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 457
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move-object/from16 v14, v24

    :try_start_c
    check-cast v23, Ljava/lang/CharSequence;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static/range {v23 .. v23}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v14, v22

    :try_start_d
    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    move-result v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static/range {v21 .. v22}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v20

    goto/16 :goto_10

    :cond_23
    sget-object v20, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 460
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v22, v12

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move-object/from16 v14, v23

    :try_start_e
    check-cast v22, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    invoke-static/range {v22 .. v22}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v14, v21

    :try_start_f
    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    move-result v20

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    move-object/from16 v21, v0

    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_24

    .line 461
    sget-object v21, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :goto_11
    invoke-static/range {v20 .. v21}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-static/range {v20 .. v21}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v20

    goto/16 :goto_10

    :cond_24
    sget-object v21, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    goto :goto_11

    .line 452
    .local v13, "x":Ljava/lang/Object;
    :cond_25
    move-object/from16 v19, v13

    goto/16 :goto_c

    .end local v13    # "x":Ljava/lang/Object;
    .local v12, "x":Ljava/lang/Object;
    :cond_26
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit39:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_28

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_35

    .line 467
    :goto_12
    const-string/jumbo v19, ""

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object/from16 v20, v9

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 468
    sget-object v19, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 469
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_29

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_13
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 470
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v12, v22

    move-object/from16 v22, v12

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2a

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move-object/from16 v13, v23

    :try_start_10
    invoke-static/range {v22 .. v22}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 471
    :goto_14
    move-object/from16 v22, v9

    sget-object v23, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 472
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    move-object/from16 v22, v0

    .line 494
    .end local v12    # "x":Ljava/lang/Object;
    :goto_15
    invoke-static/range {v19 .. v22}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 502
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v12, v19

    .restart local v12    # "x":Ljava/lang/Object;
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2e

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v13, v20

    :try_start_11
    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_12

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 503
    :goto_16
    sget-object v19, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 504
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_27

    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v12, v22

    .end local v12    # "x":Ljava/lang/Object;
    :try_start_12
    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_13

    move-result v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static/range {v21 .. v22}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 511
    :cond_27
    :goto_17
    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 438
    .end local v7    # "args":Ljava/lang/Object;
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_28
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit40:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_35

    goto/16 :goto_12

    .line 469
    :cond_29
    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_13

    .line 470
    :cond_2a
    move-object/from16 v22, v12

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2b

    goto/16 :goto_14

    .line 472
    :cond_2b
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    move-object/from16 v22, v0

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2c

    .line 476
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    move-object/from16 v22, v0

    goto/16 :goto_15

    :cond_2c
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move-object/from16 v12, v23

    .end local v12    # "x":Ljava/lang/Object;
    :try_start_13
    invoke-static/range {v22 .. v22}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_11

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 483
    move-object/from16 v22, v9

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 484
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    move-object/from16 v22, v0

    goto/16 :goto_15

    .line 494
    :cond_2d
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    move-object/from16 v22, v0

    goto/16 :goto_15

    .line 502
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_2e
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2f

    goto/16 :goto_16

    .line 504
    :cond_2f
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    move-object/from16 v19, v0

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_31

    .line 506
    sget-object v19, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 507
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_30

    .line 508
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v22, v0

    sget-object v23, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v24, v9

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v25, v9

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v12, v22

    .end local v12    # "x":Ljava/lang/Object;
    :try_start_14
    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static/range {v21 .. v22}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    :cond_30
    goto/16 :goto_17

    .line 509
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_31
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    move-object/from16 v13, v20

    :try_start_15
    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_15

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_32

    const/16 v19, 0x1

    :goto_18
    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    and-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 502
    .local v12, "x":Z
    move/from16 v19, v12

    if-eqz v19, :cond_33

    goto/16 :goto_17

    .line 509
    .local v12, "x":Ljava/lang/Object;
    :cond_32
    const/16 v19, 0x0

    goto :goto_18

    .line 502
    .local v12, "x":Z
    :cond_33
    sget-object v19, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 510
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v13, v22

    :try_start_16
    check-cast v21, Ljava/lang/CharSequence;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_16} :catch_16

    invoke-static/range {v21 .. v21}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_34

    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_17

    .line 511
    :cond_34
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 512
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move-object/from16 v14, v24

    :try_start_17
    check-cast v23, Ljava/lang/CharSequence;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_17} :catch_17

    invoke-static/range {v23 .. v23}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v14, v22

    :try_start_18
    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_18} :catch_18

    move-result v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static/range {v21 .. v22}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .line 511
    .restart local v13    # "x":Ljava/lang/Object;
    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v12    # "x":Z
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_27

    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 513
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_17

    .line 511
    .end local v13    # "x":Ljava/lang/Object;
    .local v12, "x":Ljava/lang/Object;
    :cond_35
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_36

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3c

    .line 516
    .end local v12    # "x":Ljava/lang/Object;
    :goto_19
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .restart local v12    # "x":Ljava/lang/Object;
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3b

    .line 517
    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 438
    .end local v7    # "args":Ljava/lang/Object;
    :cond_36
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit41:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .end local v12    # "x":Ljava/lang/Object;
    .restart local v13    # "x":Ljava/lang/Object;
    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_37

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3c

    goto :goto_19

    :cond_37
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    .end local v13    # "x":Ljava/lang/Object;
    .local v14, "x":Ljava/lang/Object;
    move-object/from16 v19, v14

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_38

    move-object/from16 v19, v14

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3c

    goto :goto_19

    :cond_38
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit42:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    .end local v14    # "x":Ljava/lang/Object;
    .local v15, "x":Ljava/lang/Object;
    move-object/from16 v19, v15

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_39

    move-object/from16 v19, v15

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3c

    goto/16 :goto_19

    :cond_39
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit43:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v16, v19

    .end local v15    # "x":Ljava/lang/Object;
    .local v16, "x":Ljava/lang/Object;
    move-object/from16 v19, v16

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3a

    move-object/from16 v19, v16

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3c

    goto/16 :goto_19

    :cond_3a
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit44:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3c

    goto/16 :goto_19

    .line 516
    .end local v16    # "x":Ljava/lang/Object;
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_3b
    move-object/from16 v19, v12

    goto/16 :goto_c

    .end local v12    # "x":Ljava/lang/Object;
    :cond_3c
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit46:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .restart local v12    # "x":Ljava/lang/Object;
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3d

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3f

    .line 519
    :goto_1a
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3e

    .line 520
    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 438
    .end local v7    # "args":Ljava/lang/Object;
    :cond_3d
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit47:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3f

    goto :goto_1a

    .line 519
    :cond_3e
    move-object/from16 v19, v12

    goto/16 :goto_c

    :cond_3f
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit49:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_42

    .line 522
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 523
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    sget-boolean v23, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    if-eqz v23, :cond_40

    .line 524
    sget-object v23, Lkawa/lib/rnrs/unicode;->string$Mndowncase:Lgnu/expr/ModuleMethod;

    :goto_1b
    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .line 522
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_41

    .line 525
    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 524
    .end local v7    # "args":Ljava/lang/Object;
    :cond_40
    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1b

    .line 522
    :cond_41
    move-object/from16 v19, v12

    goto/16 :goto_c

    :cond_42
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit51:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_45

    .line 527
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 528
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    sget-boolean v23, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    if-eqz v23, :cond_43

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 529
    :goto_1c
    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .line 527
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_44

    .line 530
    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 529
    .end local v7    # "args":Ljava/lang/Object;
    :cond_43
    sget-object v23, Lkawa/lib/rnrs/unicode;->string$Mnupcase:Lgnu/expr/ModuleMethod;

    goto :goto_1c

    .line 527
    :cond_44
    move-object/from16 v19, v12

    goto/16 :goto_c

    :cond_45
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit52:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_46

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_48

    .line 532
    :goto_1d
    move-object/from16 v19, v6

    move-object/from16 v20, v9

    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    sget-object v22, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v23}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_47

    .line 533
    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 438
    .end local v7    # "args":Ljava/lang/Object;
    :cond_46
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit53:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_48

    goto :goto_1d

    .line 532
    :cond_47
    move-object/from16 v19, v12

    goto/16 :goto_c

    :cond_48
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4a

    .line 534
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_49

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v7    # "args":Ljava/lang/Object;
    :cond_49
    move-object/from16 v19, v12

    goto/16 :goto_c

    :cond_4a
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4c

    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    .line 536
    .end local v12    # "x":Ljava/lang/Object;
    :goto_1e
    move-object/from16 v19, v6

    sget-object v20, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 306
    move-object/from16 v14, v21

    move-object/from16 v13, v20

    .local v13, "num":Ljava/lang/Object;
    new-instance v20, Lgnu/kawa/slib/printf$frame11;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v21}, Lgnu/kawa/slib/printf$frame11;-><init>()V

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v15, v20

    move-object/from16 v20, v15

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    .line 307
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v16, v21

    :try_start_19
    invoke-static/range {v20 .. v20}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_19} :catch_19

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v20

    if-eqz v20, :cond_53

    .line 376
    move-object/from16 v20, v9

    sget-object v21, Lgnu/kawa/slib/printf;->Lit59:Lgnu/math/IntNum;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 380
    :cond_4b
    :goto_1f
    move-object/from16 v20, v13

    invoke-static/range {v20 .. v20}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_55

    .line 382
    move-object/from16 v20, v13

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v17, v21

    :try_start_1a
    check-cast v20, Ljava/lang/Number;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1a} :catch_1c

    invoke-static/range {v20 .. v20}, Lkawa/lib/numbers;->exact$To$Inexact(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 385
    :goto_20
    move-object/from16 v16, v20

    .line 386
    .local v16, "str":Ljava/lang/Object;
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    move-object/from16 v20, v0

    move-object/from16 v21, v15

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    .line 400
    move-object/from16 v20, v16

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v17, v20

    .local v17, "x":Ljava/lang/Object;
    move-object/from16 v20, v17

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_58

    move-object/from16 v20, v17

    :goto_21
    invoke-virtual/range {v19 .. v20}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .line 536
    .end local v17    # "x":Ljava/lang/Object;
    .restart local v12    # "x":Ljava/lang/Object;
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_59

    sget-object v19, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .line 438
    .end local v7    # "args":Ljava/lang/Object;
    .end local v13    # "num":Ljava/lang/Object;
    .end local v16    # "str":Ljava/lang/Object;
    :cond_4c
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .end local v12    # "x":Ljava/lang/Object;
    .local v13, "x":Ljava/lang/Object;
    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4d

    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    goto/16 :goto_1e

    :cond_4d
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    .end local v13    # "x":Ljava/lang/Object;
    .restart local v14    # "x":Ljava/lang/Object;
    move-object/from16 v19, v14

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4e

    move-object/from16 v19, v14

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    goto/16 :goto_1e

    :cond_4e
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    .end local v14    # "x":Ljava/lang/Object;
    .restart local v15    # "x":Ljava/lang/Object;
    move-object/from16 v19, v15

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4f

    move-object/from16 v19, v15

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    goto/16 :goto_1e

    :cond_4f
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v16, v19

    .end local v15    # "x":Ljava/lang/Object;
    .local v16, "x":Ljava/lang/Object;
    move-object/from16 v19, v16

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_50

    move-object/from16 v19, v16

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    goto/16 :goto_1e

    :cond_50
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v17, v19

    .end local v16    # "x":Ljava/lang/Object;
    .restart local v17    # "x":Ljava/lang/Object;
    move-object/from16 v19, v17

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_51

    move-object/from16 v19, v17

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    goto/16 :goto_1e

    :cond_51
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v18, v19

    .end local v17    # "x":Ljava/lang/Object;
    .local v18, "x":Ljava/lang/Object;
    move-object/from16 v19, v18

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_52

    move-object/from16 v19, v18

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    goto/16 :goto_1e

    :cond_52
    sget-object v19, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v20, v11

    sget-object v21, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5a

    goto/16 :goto_1e

    .line 377
    .end local v18    # "x":Ljava/lang/Object;
    .local v13, "num":Ljava/lang/Object;
    :cond_53
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v17, v21

    :try_start_1b
    check-cast v20, Ljava/lang/Number;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1b} :catch_1a

    invoke-static/range {v20 .. v20}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v20

    move/from16 v16, v20

    .local v16, "x":Z
    move/from16 v20, v16

    if-eqz v20, :cond_54

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v17, v21

    :try_start_1c
    check-cast v20, Lgnu/text/Char;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1c} :catch_1b

    sget-object v21, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-static/range {v20 .. v21}, Lkawa/lib/rnrs/unicode;->isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v20

    if-eqz v20, :cond_4b

    .line 379
    :goto_22
    move-object/from16 v20, v9

    sget-object v21, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    goto/16 :goto_1f

    .line 377
    :cond_54
    move/from16 v20, v16

    if-eqz v20, :cond_4b

    goto :goto_22

    .line 382
    .end local v16    # "x":Z
    :cond_55
    move-object/from16 v20, v13

    invoke-static/range {v20 .. v20}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_56

    .line 383
    move-object/from16 v20, v13

    goto/16 :goto_20

    :cond_56
    move-object/from16 v20, v13

    invoke-static/range {v20 .. v20}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_57

    .line 384
    move-object/from16 v20, v13

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v17, v21

    :try_start_1d
    check-cast v20, Lgnu/mapping/Symbol;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_1d} :catch_1d

    invoke-static/range {v20 .. v20}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_20

    .line 385
    :cond_57
    const-string/jumbo v20, "???"

    goto/16 :goto_20

    .line 400
    .local v16, "str":Ljava/lang/Object;
    .restart local v17    # "x":Ljava/lang/Object;
    :cond_58
    move-object/from16 v20, v9

    const-string/jumbo v21, "???"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_21

    .line 536
    .end local v17    # "x":Ljava/lang/Object;
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_59
    move-object/from16 v19, v12

    goto/16 :goto_c

    .line 538
    .end local v12    # "x":Ljava/lang/Object;
    .end local v13    # "num":Ljava/lang/Object;
    .end local v16    # "str":Ljava/lang/Object;
    :cond_5a
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda19isEndOfFormat()Z

    move-result v19

    if-eqz v19, :cond_5b

    .line 539
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/slib/printf$frame9;->lambda20incomplete()Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_c

    .line 540
    :cond_5b
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .restart local v12    # "x":Ljava/lang/Object;
    move-object/from16 v19, v12

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5e

    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    .end local v12    # "x":Ljava/lang/Object;
    .local v13, "x":Ljava/lang/Object;
    move-object/from16 v19, v13

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5d

    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Lgnu/kawa/slib/printf;->Lit65:Lgnu/text/Char;

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    .end local v13    # "x":Ljava/lang/Object;
    .restart local v14    # "x":Ljava/lang/Object;
    move-object/from16 v19, v14

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5c

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v7    # "args":Ljava/lang/Object;
    :cond_5c
    move-object/from16 v19, v14

    .end local v14    # "x":Ljava/lang/Object;
    :goto_23
    goto/16 :goto_c

    .restart local v13    # "x":Ljava/lang/Object;
    :cond_5d
    move-object/from16 v19, v13

    goto :goto_23

    .end local v13    # "x":Ljava/lang/Object;
    .restart local v12    # "x":Ljava/lang/Object;
    :cond_5e
    move-object/from16 v19, v12

    goto/16 :goto_c

    .line 541
    .end local v11    # "tmp":Ljava/lang/Object;
    .end local v12    # "x":Ljava/lang/Object;
    .restart local v10    # "x":Z
    :cond_5f
    sget-object v19, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .local v11, "x":Ljava/lang/Object;
    move-object/from16 v19, v11

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v10    # "x":Z
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_60

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .restart local v7    # "args":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v7    # "args":Ljava/lang/Object;
    :cond_60
    move-object/from16 v19, v11

    goto/16 :goto_2

    .end local v8    # "closureEnv":Lgnu/kawa/slib/printf$frame9;
    .end local v11    # "x":Ljava/lang/Object;
    :cond_61
    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_2

    .line 190
    :catch_0
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-length"

    const/16 v23, 0x1

    move-object/from16 v24, v7

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 191
    :catch_1
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-ref"

    const/16 v23, 0x1

    move-object/from16 v24, v7

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 196
    .restart local v8    # "closureEnv":Lgnu/kawa/slib/printf$frame9;
    :catch_2
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-ref"

    const/16 v23, 0x1

    move-object/from16 v24, v10

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    :catch_3
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-ref"

    const/16 v23, 0x2

    move-object/from16 v24, v10

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 420
    .restart local v10    # "x":Z
    :catch_4
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "negative?"

    const/16 v23, 0x1

    move-object/from16 v24, v11

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 433
    .end local v10    # "x":Z
    :catch_5
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "char-downcase"

    const/16 v23, 0x1

    move-object/from16 v24, v11

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 446
    .local v11, "tmp":Ljava/lang/Object;
    .restart local v12    # "x":Ljava/lang/Object;
    :catch_6
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "symbol->string"

    const/16 v23, 0x1

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 449
    .local v12, "s":Ljava/lang/Object;
    :catch_7
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "negative?"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 450
    .local v13, "x":Z
    :catch_8
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-length"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 451
    .end local v13    # "x":Z
    :catch_9
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "substring"

    const/16 v23, 0x1

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    :catch_a
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "substring"

    const/16 v23, 0x3

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 454
    .end local v12    # "s":Ljava/lang/Object;
    :catch_b
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-length"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 457
    :catch_c
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-length"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    :catch_d
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "make-string"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 460
    :catch_e
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-length"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    :catch_f
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "make-string"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 470
    .local v12, "x":Ljava/lang/Object;
    :catch_10
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "negative?"

    const/16 v23, 0x1

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 482
    .end local v12    # "x":Ljava/lang/Object;
    :catch_11
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "negative?"

    const/16 v23, 0x1

    move-object/from16 v24, v12

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 502
    .restart local v12    # "x":Ljava/lang/Object;
    :catch_12
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "negative?"

    const/16 v23, 0x1

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 504
    .end local v12    # "x":Ljava/lang/Object;
    :catch_13
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "make-string"

    const/16 v23, 0x1

    move-object/from16 v24, v12

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 508
    :catch_14
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "make-string"

    const/16 v23, 0x1

    move-object/from16 v24, v12

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 509
    .restart local v12    # "x":Ljava/lang/Object;
    :catch_15
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "x"

    const/16 v23, -0x2

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 510
    .local v12, "x":Z
    :catch_16
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-length"

    const/16 v23, 0x1

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 512
    :catch_17
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "string-length"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    :catch_18
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "make-string"

    const/16 v23, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 375
    .end local v12    # "x":Z
    .local v13, "num":Ljava/lang/Object;
    :catch_19
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "negative?"

    const/16 v23, 0x1

    move-object/from16 v24, v16

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 377
    :catch_1a
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "zero?"

    const/16 v23, 0x1

    move-object/from16 v24, v17

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 378
    .local v16, "x":Z
    :catch_1b
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "char-ci=?"

    const/16 v23, 0x1

    move-object/from16 v24, v17

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 382
    .end local v16    # "x":Z
    :catch_1c
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "exact->inexact"

    const/16 v23, 0x1

    move-object/from16 v24, v17

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19

    .line 384
    :catch_1d
    move-exception v19

    new-instance v20, Lgnu/mapping/WrongType;

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v28

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    const-string/jumbo v22, "symbol->string"

    const/16 v23, 0x1

    move-object/from16 v24, v17

    invoke-direct/range {v20 .. v24}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v19
.end method

.method public static stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "proc":Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/printf$frame;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lgnu/kawa/slib/printf$frame;-><init>()V

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    iput-object v5, v4, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v4, v2

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    .line 35
    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v3, v5

    :try_start_0
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    move-object v5, v2

    move v10, v4

    move-object v11, v5

    move-object v4, v11

    move v5, v10

    iput v5, v4, Lgnu/kawa/slib/printf$frame;->n:I

    .line 36
    move-object v4, v2

    sget-object v5, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v6, v2

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/printf$frame;->lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "str":Ljava/lang/Object;
    return-object v0

    .line 35
    .restart local v0    # "str":Ljava/lang/Object;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "string-length"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public static stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .prologue
    .line 138
    move-object/from16 v2, p0

    .local v2, "str":Ljava/lang/CharSequence;
    move-object/from16 v3, p1

    .local v3, "ndigs":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "strip$Mn0s":Ljava/lang/Object;
    new-instance v15, Lgnu/kawa/slib/printf$frame8;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Lgnu/kawa/slib/printf$frame8;-><init>()V

    move-object v5, v15

    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    .line 139
    move-object v15, v5

    iget-object v15, v15, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    invoke-static {v15}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move v6, v15

    .line 141
    .local v6, "n":I
    sget-object v15, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object/from16 v16, v3

    sget-object v17, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    const-string/jumbo v15, ""

    .line 177
    :goto_0
    move-object v7, v15

    .line 178
    .local v7, "res":Ljava/lang/Object;
    move-object v15, v4

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_e

    .line 179
    move-object v15, v7

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v8, v16

    :try_start_0
    check-cast v15, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_b

    invoke-static {v15}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object v8, v15

    .line 180
    :goto_1
    sget-object v15, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v10, v16

    :try_start_1
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_c

    move-result v15

    move v9, v15

    .local v9, "x":Z
    move v15, v9

    if-eqz v15, :cond_c

    move v15, v9

    if-eqz v15, :cond_d

    .line 182
    :goto_2
    move-object v15, v7

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v9, v16

    .end local v9    # "x":Z
    :try_start_2
    check-cast v15, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_f

    const/16 v16, 0x0

    sget-object v17, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v18, v8

    sget-object v19, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v17 .. v19}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v9, v18

    :try_start_3
    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_10

    move-result v17

    invoke-static/range {v15 .. v17}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 183
    .line 178
    :goto_3
    move-object v2, v15

    .end local v2    # "str":Ljava/lang/CharSequence;
    return-object v2

    .line 141
    .end local v7    # "res":Ljava/lang/Object;
    .restart local v2    # "str":Ljava/lang/CharSequence;
    :cond_0
    sget-object v15, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 142
    move/from16 v16, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object v15, v5

    iget-object v15, v15, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_1
    sget-object v15, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 143
    move/from16 v16, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 144
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    sget-object v18, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    aput-object v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    sget-object v18, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v19, v4

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v19, v4

    :goto_4
    move/from16 v20, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static {v15}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    .line 145
    .local v8, "padlen":Ljava/lang/Object;
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v9, v16

    :try_start_4
    check-cast v15, Ljava/lang/Number;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v15}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v5

    iget-object v15, v15, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    .line 149
    :goto_5
    goto/16 :goto_0

    .line 144
    .end local v8    # "padlen":Ljava/lang/Object;
    :cond_2
    move-object/from16 v19, v3

    goto :goto_4

    .line 147
    .restart local v8    # "padlen":Ljava/lang/Object;
    :cond_3
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    move-object/from16 v18, v8

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v9, v19

    :try_start_5
    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v18

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move/from16 v20, v6

    invoke-static/range {v19 .. v20}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 149
    sget-object v19, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :goto_6
    invoke-static/range {v18 .. v19}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static {v15}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v15

    goto :goto_5

    :cond_4
    sget-object v19, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    goto :goto_6

    .line 153
    .end local v8    # "padlen":Ljava/lang/Object;
    :cond_5
    move-object v15, v5

    iget-object v15, v15, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    sget-object v17, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v18, v3

    sget-object v19, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v17 .. v19}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v9, v18

    :try_start_6
    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v17

    invoke-static/range {v15 .. v17}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 154
    move-object v8, v15

    .line 159
    .local v8, "res":Ljava/lang/CharSequence;
    move-object v15, v5

    sget-object v16, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v17, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v18, v3

    invoke-virtual/range {v16 .. v18}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v9, v15

    .line 160
    .local v9, "ldig":Ljava/lang/Object;
    sget-object v15, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    move-object/from16 v16, v9

    sget-object v17, Lgnu/kawa/slib/printf;->Lit15:Lgnu/math/IntNum;

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v11, v16

    :try_start_7
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v15

    move v10, v15

    .local v10, "x":Z
    move v15, v10

    if-eqz v15, :cond_8

    move v15, v10

    if-eqz v15, :cond_7

    .line 168
    .end local v10    # "x":Z
    :cond_6
    :goto_7
    move-object v15, v3

    move-object v10, v15

    .local v10, "i":Ljava/lang/Object;
    :goto_8
    move-object v15, v5

    move-object v11, v15

    .line 169
    .local v11, "closureEnv":Lgnu/kawa/slib/printf$frame8;
    move-object v15, v5

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    .line 170
    .local v12, "d":Ljava/lang/Object;
    sget-object v15, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    move-object/from16 v16, v12

    sget-object v17, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_b

    .line 171
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v13, v16

    :try_start_8
    check-cast v15, Lgnu/lists/CharSeq;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v16, v10

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v13, v17

    :try_start_9
    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v16

    sget-object v17, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 173
    move-object/from16 v18, v12

    sget-object v19, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v17 .. v19}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v13, v18

    :try_start_a
    check-cast v17, Ljava/lang/Number;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_8

    invoke-static/range {v17 .. v17}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v17

    invoke-static/range {v15 .. v17}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 176
    .line 177
    .end local v10    # "i":Ljava/lang/Object;
    .end local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame8;
    .end local v12    # "d":Ljava/lang/Object;
    :cond_7
    move-object v15, v8

    goto/16 :goto_0

    .line 161
    .local v10, "x":Z
    :cond_8
    sget-object v15, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    move-object/from16 v16, v9

    sget-object v17, Lgnu/kawa/slib/printf;->Lit15:Lgnu/math/IntNum;

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v12, v16

    :try_start_b
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_4

    move-result v15

    move v11, v15

    .end local v10    # "x":Z
    .local v11, "x":Z
    move v15, v11

    if-eqz v15, :cond_a

    .line 162
    sget-object v15, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v16, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    .local v12, "i":Ljava/lang/Object;
    :goto_9
    move-object v15, v5

    move-object v13, v15

    .line 163
    .local v13, "closureEnv":Lgnu/kawa/slib/printf$frame8;
    sget-object v15, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    move-object/from16 v16, v12

    move/from16 v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 164
    move-object v15, v5

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_7

    goto/16 :goto_7

    .line 165
    :cond_9
    move-object v15, v5

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v14, v16

    :try_start_c
    check-cast v15, Ljava/lang/Number;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_5

    invoke-static {v15}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 166
    sget-object v15, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v16, v12

    sget-object v17, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    goto :goto_9

    .line 161
    .end local v12    # "i":Ljava/lang/Object;
    .end local v13    # "closureEnv":Lgnu/kawa/slib/printf$frame8;
    :cond_a
    move v15, v11

    if-eqz v15, :cond_7

    goto/16 :goto_7

    .line 174
    .local v10, "i":Ljava/lang/Object;
    .local v11, "closureEnv":Lgnu/kawa/slib/printf$frame8;
    .local v12, "d":Ljava/lang/Object;
    :cond_b
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v13, v16

    :try_start_d
    check-cast v15, Lgnu/lists/CharSeq;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_9

    move-object/from16 v16, v10

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v13, v17

    :try_start_e
    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_a

    move-result v16

    const/16 v17, 0x30

    invoke-static/range {v15 .. v17}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 176
    sget-object v15, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v16, v10

    sget-object v17, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v10, v15

    goto/16 :goto_8

    .line 180
    .end local v8    # "res":Ljava/lang/CharSequence;
    .end local v10    # "i":Ljava/lang/Object;
    .end local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame8;
    .end local v12    # "d":Ljava/lang/Object;
    .restart local v7    # "res":Ljava/lang/Object;
    .local v9, "x":Z
    :cond_c
    sget-object v15, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    move-object/from16 v16, v7

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v10, v17

    :try_start_f
    check-cast v16, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_d

    move-object/from16 v17, v8

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v10, v18

    :try_start_10
    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v17

    invoke-static/range {v16 .. v17}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_2

    .line 183
    :cond_d
    sget-object v15, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v16, v8

    sget-object v17, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual/range {v15 .. v17}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    .local v8, "i":Ljava/lang/Object;
    goto/16 :goto_1

    .line 178
    .end local v8    # "i":Ljava/lang/Object;
    .end local v9    # "x":Z
    :cond_e
    move-object v15, v7

    goto/16 :goto_3

    .line 145
    .end local v7    # "res":Ljava/lang/Object;
    .local v8, "padlen":Ljava/lang/Object;
    :catch_0
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "zero?"

    const/16 v19, 0x1

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 148
    :catch_1
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "make-string"

    const/16 v19, 0x1

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 153
    .end local v8    # "padlen":Ljava/lang/Object;
    :catch_2
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "substring"

    const/16 v19, 0x3

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 160
    .local v8, "res":Ljava/lang/CharSequence;
    .local v9, "ldig":Ljava/lang/Object;
    :catch_3
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "x"

    const/16 v19, -0x2

    move-object/from16 v20, v11

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 161
    .local v10, "x":Z
    :catch_4
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "x"

    const/16 v19, -0x2

    move-object/from16 v20, v12

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 165
    .end local v10    # "x":Z
    .local v11, "x":Z
    .local v12, "i":Ljava/lang/Object;
    .restart local v13    # "closureEnv":Lgnu/kawa/slib/printf$frame8;
    :catch_5
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "zero?"

    const/16 v19, 0x1

    move-object/from16 v20, v14

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 171
    .end local v13    # "closureEnv":Lgnu/kawa/slib/printf$frame8;
    .local v10, "i":Ljava/lang/Object;
    .local v11, "closureEnv":Lgnu/kawa/slib/printf$frame8;
    .local v12, "d":Ljava/lang/Object;
    :catch_6
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "string-set!"

    const/16 v19, 0x1

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    :catch_7
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "string-set!"

    const/16 v19, 0x2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 173
    :catch_8
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "number->string"

    const/16 v19, 0x1

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 175
    :catch_9
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "string-set!"

    const/16 v19, 0x1

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    :catch_a
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "string-set!"

    const/16 v19, 0x2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 179
    .end local v8    # "res":Ljava/lang/CharSequence;
    .end local v9    # "ldig":Ljava/lang/Object;
    .end local v10    # "i":Ljava/lang/Object;
    .end local v11    # "closureEnv":Lgnu/kawa/slib/printf$frame8;
    .end local v12    # "d":Ljava/lang/Object;
    .restart local v7    # "res":Ljava/lang/Object;
    :catch_b
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "string-length"

    const/16 v19, 0x1

    move-object/from16 v20, v8

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 180
    :catch_c
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "x"

    const/16 v19, -0x2

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 181
    .local v9, "x":Z
    :catch_d
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "string-ref"

    const/16 v19, 0x1

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    :catch_e
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "string-ref"

    const/16 v19, 0x2

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 182
    .end local v9    # "x":Z
    :catch_f
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "substring"

    const/16 v19, 0x1

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    :catch_10
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "substring"

    const/16 v19, 0x3

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_0

    .line 34
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 34
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0x17

    if-ne v5, v6, :cond_0

    .line 138
    move-object v5, v2

    :try_start_0
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 4294967295
    .line 138
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "stdio:round-string"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 556
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v3, v6

    move v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v7, v3

    if-gez v7, :cond_0

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v3

    move-object v9, v2

    move v10, v3

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    goto :goto_1

    .line 543
    :pswitch_1
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v3, v6

    move v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v7, v3

    if-gez v7, :cond_1

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/printf;->fprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v3

    move-object v9, v2

    move v10, v3

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    goto :goto_2

    .line 553
    :pswitch_2
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gez v6, :cond_2

    invoke-static {v4, v5}, Lgnu/kawa/slib/printf;->printf$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move v7, v3

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    goto :goto_3

    .line 556
    :pswitch_3
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v3, v6

    move v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    :goto_4
    add-int/lit8 v3, v3, -0x1

    move v7, v3

    if-gez v7, :cond_3

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/printf;->sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    :cond_3
    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v3

    move-object v9, v2

    move v10, v3

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    goto :goto_4

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v6, 0x16

    if-ne v5, v6, :cond_0

    .line 34
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    .line 4294967295
    .line 34
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v7, 0x17

    if-ne v6, v7, :cond_0

    .line 138
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    return v0

    .line 4294967295
    .line 138
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    :cond_1
    const v8, -0xbffff

    move v0, v8

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 186
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 556
    :goto_0
    return v0

    :pswitch_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 553
    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 543
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 186
    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 24
    .local v2, "$result":Lgnu/lists/Consumer;
    const-string/jumbo v3, "-F"

    sget-object v4, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    .line 34
    return-void
.end method
