.class public abstract Lgnu/bytecode/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/bytecode/Type$ClassToTypeMap;
    }
.end annotation


# static fields
.field public static final booleanType:Lgnu/bytecode/PrimType;

.field public static final booleanValue_method:Lgnu/bytecode/Method;

.field public static final boolean_ctype:Lgnu/bytecode/ClassType;

.field public static final boolean_type:Lgnu/bytecode/PrimType;

.field public static final byteType:Lgnu/bytecode/PrimType;

.field public static final byte_type:Lgnu/bytecode/PrimType;

.field public static final charType:Lgnu/bytecode/PrimType;

.field public static final char_type:Lgnu/bytecode/PrimType;

.field public static final clone_method:Lgnu/bytecode/Method;

.field public static final doubleType:Lgnu/bytecode/PrimType;

.field public static final doubleValue_method:Lgnu/bytecode/Method;

.field public static final double_type:Lgnu/bytecode/PrimType;

.field public static final errorType:Lgnu/bytecode/ObjectType;

.field public static final floatType:Lgnu/bytecode/PrimType;

.field public static final floatValue_method:Lgnu/bytecode/Method;

.field public static final float_type:Lgnu/bytecode/PrimType;

.field public static final intType:Lgnu/bytecode/PrimType;

.field public static final intValue_method:Lgnu/bytecode/Method;

.field public static final int_type:Lgnu/bytecode/PrimType;

.field public static final java_lang_Class_type:Lgnu/bytecode/ClassType;

.field public static final javalangBooleanType:Lgnu/bytecode/ClassType;

.field public static final javalangClassType:Lgnu/bytecode/ClassType;

.field public static final javalangNumberType:Lgnu/bytecode/ClassType;

.field public static final javalangObjectType:Lgnu/bytecode/ClassType;

.field public static javalangStringType:Lgnu/bytecode/ClassType;

.field public static final javalangThrowableType:Lgnu/bytecode/ClassType;

.field public static final longType:Lgnu/bytecode/PrimType;

.field public static final longValue_method:Lgnu/bytecode/Method;

.field public static final long_type:Lgnu/bytecode/PrimType;

.field static mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

.field static mapNameToType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final neverReturnsType:Lgnu/bytecode/PrimType;

.field public static final nullType:Lgnu/bytecode/ObjectType;

.field public static final number_type:Lgnu/bytecode/ClassType;

.field public static final objectType:Lgnu/bytecode/ClassType;

.field public static final pointer_type:Lgnu/bytecode/ClassType;

.field public static final shortType:Lgnu/bytecode/PrimType;

.field public static final short_type:Lgnu/bytecode/PrimType;

.field public static final string_type:Lgnu/bytecode/ClassType;

.field public static final throwable_type:Lgnu/bytecode/ClassType;

.field public static final toStringType:Lgnu/bytecode/ClassType;

.field public static final toString_method:Lgnu/bytecode/Method;

.field public static final tostring_type:Lgnu/bytecode/ClassType;

.field public static final typeArray0:[Lgnu/bytecode/Type;

.field public static final voidType:Lgnu/bytecode/PrimType;

.field public static final void_type:Lgnu/bytecode/PrimType;


# instance fields
.field array_type:Lgnu/bytecode/ArrayType;

.field protected reflectClass:Ljava/lang/Class;

.field signature:Ljava/lang/String;

.field size:I

.field this_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 487
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "byte"

    const-string/jumbo v3, "B"

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    .line 489
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "short"

    const-string/jumbo v3, "S"

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    .line 491
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "int"

    const-string/jumbo v3, "I"

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 493
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "long"

    const-string/jumbo v3, "J"

    const/16 v4, 0x8

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .line 495
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "float"

    const-string/jumbo v3, "F"

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    .line 497
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "double"

    const-string/jumbo v3, "D"

    const/16 v4, 0x8

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 499
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "boolean"

    const-string/jumbo v3, "Z"

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    .line 501
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "char"

    const-string/jumbo v3, "C"

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    .line 503
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "void"

    const-string/jumbo v3, "V"

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .line 506
    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->byte_type:Lgnu/bytecode/PrimType;

    .line 507
    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->short_type:Lgnu/bytecode/PrimType;

    .line 508
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    .line 509
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->long_type:Lgnu/bytecode/PrimType;

    .line 510
    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->float_type:Lgnu/bytecode/PrimType;

    .line 511
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->double_type:Lgnu/bytecode/PrimType;

    .line 512
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->boolean_type:Lgnu/bytecode/PrimType;

    .line 513
    sget-object v0, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->char_type:Lgnu/bytecode/PrimType;

    .line 514
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    .line 519
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 523
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    sget-object v2, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 525
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 526
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "long"

    sget-object v2, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "float"

    sget-object v2, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 528
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "double"

    sget-object v2, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 529
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 530
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "char"

    sget-object v2, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 531
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    const-string/jumbo v1, "void"

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 535
    new-instance v0, Lgnu/bytecode/PrimType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v1, v2}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    .line 536
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    const-string/jumbo v1, "(never-returns)"

    iput-object v1, v0, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    .line 539
    new-instance v0, Lgnu/bytecode/ObjectType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "(type of null)"

    invoke-direct {v1, v2}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    .line 541
    new-instance v0, Lgnu/bytecode/ClassType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "(error type)"

    invoke-direct {v1, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/bytecode/Type;->errorType:Lgnu/bytecode/ObjectType;

    .line 543
    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 545
    new-instance v0, Lgnu/bytecode/ClassType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "java.lang.String"

    invoke-direct {v1, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    .line 548
    const-string/jumbo v0, "java.lang.Object"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    .line 550
    sget-object v0, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 551
    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    .line 553
    const-string/jumbo v0, "java.lang.Throwable"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    .line 555
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/bytecode/Type;

    sput-object v0, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    .line 556
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "toString"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    .line 558
    const-string/jumbo v0, "java.lang.Number"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    .line 560
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {v0}, Lgnu/bytecode/Method;->makeCloneMethod(Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    .line 562
    sget-object v0, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "intValue"

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->intValue_method:Lgnu/bytecode/Method;

    .line 565
    sget-object v0, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "longValue"

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->longValue_method:Lgnu/bytecode/Method;

    .line 568
    sget-object v0, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "floatValue"

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->floatValue_method:Lgnu/bytecode/Method;

    .line 571
    sget-object v0, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "doubleValue"

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->doubleValue_method:Lgnu/bytecode/Method;

    .line 574
    sget-object v0, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "booleanValue"

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->booleanValue_method:Lgnu/bytecode/Method;

    .line 577
    const-string/jumbo v0, "java.lang.Class"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    .line 580
    sget-object v0, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 582
    sget-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    .line 584
    sget-object v0, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    .line 586
    sget-object v0, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    .line 588
    sget-object v0, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->boolean_ctype:Lgnu/bytecode/ClassType;

    .line 590
    sget-object v0, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->throwable_type:Lgnu/bytecode/ClassType;

    .line 592
    sget-object v0, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->number_type:Lgnu/bytecode/ClassType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 162
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    iput-object v3, v2, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 163
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    iput-object v3, v2, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    .line 164
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    iput v3, v2, Lgnu/bytecode/Type;->size:I

    .line 165
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    iput-object v3, v2, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    .line 166
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "nam":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sig":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 157
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public static getType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 10

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v6, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object v1, v6

    .line 83
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    move-object v6, v1

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    monitor-enter v6

    .line 85
    move-object v6, v1

    move-object v7, v0

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/Type;

    move-object v3, v6

    .line 86
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 88
    move-object v6, v0

    const-string/jumbo v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    move-object v6, v0

    invoke-static {v6}, Lgnu/bytecode/ArrayType;->make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;

    move-result-object v6

    move-object v3, v6

    .line 96
    :goto_0
    move-object v6, v1

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 98
    :cond_0
    move-object v6, v3

    move-object v7, v2

    monitor-exit v7

    move-object v0, v6

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .line 92
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v6, Lgnu/bytecode/ClassType;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 93
    .local v4, "cl":Lgnu/bytecode/ClassType;
    move-object v6, v4

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lgnu/bytecode/ClassType;->flags:I

    const/16 v8, 0x10

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lgnu/bytecode/ClassType;->flags:I

    .line 94
    move-object v6, v4

    move-object v3, v6

    goto :goto_0

    .line 99
    .end local v3    # "type":Lgnu/bytecode/Type;
    .end local v4    # "cl":Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public static isMoreSpecific([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)Z
    .locals 6

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "t1":[Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "t2":[Lgnu/bytecode/Type;
    move-object v3, v0

    array-length v3, v3

    move-object v4, v1

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 441
    const/4 v3, 0x0

    move v0, v3

    .line 447
    .end local v0    # "t1":[Lgnu/bytecode/Type;
    :goto_0
    return v0

    .line 442
    .restart local v0    # "t1":[Lgnu/bytecode/Type;
    :cond_0
    move-object v3, v0

    array-length v3, v3

    move v2, v3

    .local v2, "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_2

    .line 444
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 447
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static isValidJavaTypeName(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const/4 v5, 0x0

    move v1, v5

    .line 328
    .local v1, "in_name":Z
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .line 330
    .local v3, "len":I
    :goto_0
    move v5, v3

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move v6, v3

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_0

    .line 331
    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    .line 332
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_1
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_6

    .line 334
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 335
    .local v4, "ch":C
    move v5, v4

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    .line 337
    move v5, v1

    if-eqz v5, :cond_1

    .line 338
    const/4 v5, 0x0

    move v1, v5

    .line 332
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    .line 348
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "ch":C
    :goto_3
    return v0

    .line 342
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v4    # "ch":C
    :cond_2
    move v5, v1

    if-eqz v5, :cond_4

    move v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 344
    :cond_3
    const/4 v5, 0x1

    move v1, v5

    goto :goto_2

    .line 342
    :cond_4
    move v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 346
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    goto :goto_3

    .line 348
    .end local v4    # "ch":C
    :cond_6
    move v5, v2

    move v6, v3

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_4
    move v0, v5

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public static lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v4, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object v1, v4

    .line 65
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    move-object v4, v1

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    move-object v4, v1

    move-object v5, v0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/Type;

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 6

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "t1":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "t2":Lgnu/bytecode/Type;
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    if-ne v4, v5, :cond_0

    .line 377
    move-object v4, v1

    move-object v0, v4

    .line 404
    .end local v0    # "t1":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 378
    .restart local v0    # "t1":Lgnu/bytecode/Type;
    :cond_0
    move-object v4, v1

    sget-object v5, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    if-ne v4, v5, :cond_1

    .line 379
    move-object v4, v0

    move-object v0, v4

    goto :goto_0

    .line 380
    :cond_1
    move-object v4, v0

    if-eqz v4, :cond_2

    move-object v4, v1

    if-nez v4, :cond_3

    .line 381
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 382
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_6

    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_6

    .line 384
    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_4

    .line 385
    move-object v4, v0

    move-object v0, v4

    goto :goto_0

    .line 386
    :cond_4
    move-object v4, v0

    check-cast v4, Lgnu/bytecode/PrimType;

    invoke-virtual {v4}, Lgnu/bytecode/PrimType;->promotedType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v0, v4

    .line 387
    move-object v4, v1

    check-cast v4, Lgnu/bytecode/PrimType;

    invoke-virtual {v4}, Lgnu/bytecode/PrimType;->promotedType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v1, v4

    .line 388
    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_5

    move-object v4, v0

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 390
    :cond_6
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 391
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 392
    :cond_7
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 393
    move-object v4, v0

    move-object v0, v4

    goto :goto_0

    .line 397
    :cond_8
    move-object v4, v0

    instance-of v4, v4, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_9

    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/ClassType;

    if-nez v4, :cond_a

    .line 398
    :cond_9
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v4

    goto :goto_0

    .line 399
    :cond_a
    move-object v4, v0

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v2, v4

    .line 400
    .local v2, "c1":Lgnu/bytecode/ClassType;
    move-object v4, v1

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v3, v4

    .line 401
    .local v3, "c2":Lgnu/bytecode/ClassType;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-nez v4, :cond_b

    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 402
    :cond_b
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v4

    goto :goto_0

    .line 404
    :cond_c
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public static declared-synchronized make(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 12

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "reflectClass":Ljava/lang/Class;
    const-class v10, Lgnu/bytecode/Type;

    monitor-enter v10

    :try_start_0
    sget-object v7, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    if-eqz v7, :cond_0

    .line 118
    sget-object v7, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lgnu/bytecode/Type$ClassToTypeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v7

    .line 119
    .local v2, "t":Lgnu/bytecode/Type;
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 120
    move-object v7, v2

    move-object v0, v7

    .line 149
    .end local v0    # "reflectClass":Ljava/lang/Class;
    .end local v2    # "t":Lgnu/bytecode/Type;
    :goto_0
    monitor-exit v10

    return-object v0

    .line 122
    .restart local v0    # "reflectClass":Ljava/lang/Class;
    :cond_0
    move-object v7, v0

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    invoke-static {v7}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v7

    move-object v1, v7

    .line 148
    .local v1, "type":Lgnu/bytecode/Type;
    :goto_1
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 149
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 124
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    new-instance v7, Ljava/lang/Error;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "internal error - primitive type not found"

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "reflectClass":Ljava/lang/Class;
    throw v0

    .line 128
    .restart local v0    # "reflectClass":Ljava/lang/Class;
    :cond_2
    move-object v7, v0

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 130
    .local v2, "name":Ljava/lang/String;
    sget-object v7, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object v3, v7

    .line 134
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    move-object v7, v3

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    move-object v7, v3

    move-object v8, v2

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Type;

    move-object v1, v7

    .line 137
    .restart local v1    # "type":Lgnu/bytecode/Type;
    move-object v7, v1

    if-eqz v7, :cond_3

    move-object v7, v1

    iget-object v7, v7, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    move-object v8, v0

    if-eq v7, v8, :cond_4

    move-object v7, v1

    iget-object v7, v7, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    if-eqz v7, :cond_4

    .line 141
    :cond_3
    new-instance v7, Lgnu/bytecode/ClassType;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    invoke-direct {v8, v9}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 142
    .local v5, "cl":Lgnu/bytecode/ClassType;
    move-object v7, v5

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/bytecode/ClassType;->flags:I

    const/16 v9, 0x10

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Lgnu/bytecode/ClassType;->flags:I

    .line 143
    move-object v7, v5

    move-object v1, v7

    .line 144
    sget-object v7, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 146
    .end local v5    # "cl":Lgnu/bytecode/ClassType;
    :cond_4
    move-object v7, v4

    monitor-exit v7

    goto :goto_1

    .end local v1    # "type":Lgnu/bytecode/Type;
    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v6

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V
    .locals 11

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "sig":Ljava/lang/String;
    move v1, p1

    .local v1, "off":I
    move v2, p2

    .local v2, "len":I
    move-object v3, p3

    .local v3, "out":Ljava/io/PrintWriter;
    move v6, v2

    if-nez v6, :cond_0

    .line 229
    .line 247
    :goto_0
    return-void

    .line 230
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 232
    .local v4, "c":C
    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 234
    move v6, v4

    invoke-static {v6}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v6

    move-object v5, v6

    .line 235
    .local v5, "type":Lgnu/bytecode/Type;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 236
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .end local v5    # "type":Lgnu/bytecode/Type;
    :cond_1
    :goto_1
    goto :goto_0

    .line 238
    :cond_2
    move v6, v4

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_3

    .line 240
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v3

    invoke-static {v6, v7, v8, v9}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    .line 241
    move-object v6, v3

    const-string/jumbo v7, "[]"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_3
    move v6, v4

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_4

    move v6, v2

    const/4 v7, 0x2

    if-le v6, v7, :cond_4

    move-object v6, v0

    const/16 v7, 0x3b

    move v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v1

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_4

    .line 244
    move-object v6, v3

    move-object v7, v0

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v1

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_4
    move-object v6, v3

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v1

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v6

    goto :goto_1
.end method

.method public static declared-synchronized registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "clas":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    const-class v6, Lgnu/bytecode/Type;

    monitor-enter v6

    :try_start_0
    sget-object v3, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    move-object v2, v3

    .line 106
    .local v2, "map":Lgnu/bytecode/Type$ClassToTypeMap;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 107
    new-instance v3, Lgnu/bytecode/Type$ClassToTypeMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lgnu/bytecode/Type$ClassToTypeMap;-><init>()V

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v2, v4

    sput-object v3, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    .line 108
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    .line 109
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/Type$ClassToTypeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 110
    monitor-exit v6

    return-void

    .line 105
    .end local v2    # "map":Lgnu/bytecode/Type$ClassToTypeMap;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "clas":Ljava/lang/Class;
    throw v0
.end method

.method public static signatureLength(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "sig":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    .end local v0    # "sig":Ljava/lang/String;
    return v0
.end method

.method public static signatureLength(Ljava/lang/String;I)I
    .locals 9

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "sig":Ljava/lang/String;
    move v1, p1

    .local v1, "pos":I
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 254
    .local v2, "len":I
    move v6, v2

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 255
    const/4 v6, -0x1

    move v0, v6

    .line 272
    .end local v0    # "sig":Ljava/lang/String;
    :goto_0
    return v0

    .line 256
    .restart local v0    # "sig":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    .line 257
    .local v3, "c":C
    const/4 v6, 0x0

    move v4, v6

    .line 258
    .local v4, "arrays":I
    :goto_1
    move v6, v3

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_1

    .line 260
    add-int/lit8 v4, v4, 0x1

    .line 261
    add-int/lit8 v1, v1, 0x1

    .line 262
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    goto :goto_1

    .line 264
    :cond_1
    move v6, v3

    invoke-static {v6}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 265
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    goto :goto_0

    .line 266
    :cond_2
    move v6, v3

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_3

    .line 268
    move-object v6, v0

    const/16 v7, 0x3b

    move v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v5, v6

    .line 269
    .local v5, "end":I
    move v6, v5

    if-lez v6, :cond_3

    .line 270
    move v6, v4

    move v7, v5

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v1

    sub-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 272
    .end local v5    # "end":I
    :cond_3
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0
.end method

.method public static signatureToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "sig":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v6

    .line 285
    .local v1, "len":I
    move v6, v1

    if-nez v6, :cond_0

    .line 286
    const/4 v6, 0x0

    move-object v0, v6

    .line 311
    .end local v0    # "sig":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 287
    .restart local v0    # "sig":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v2, v6

    .line 289
    .local v2, "c":C
    move v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 291
    move v6, v2

    invoke-static {v6}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v6

    move-object v3, v6

    .line 292
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 293
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 295
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_1
    move v6, v2

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_5

    .line 297
    const/4 v6, 0x1

    move v4, v6

    .line 298
    .local v4, "arrays":I
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_2

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_2

    .line 299
    add-int/lit8 v4, v4, 0x1

    .line 300
    :cond_2
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/Type;->signatureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 301
    move-object v6, v0

    if-nez v6, :cond_3

    .line 302
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 303
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0x32

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v5, v6

    .line 304
    .local v5, "buf":Ljava/lang/StringBuffer;
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 305
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v6, v4

    if-ltz v6, :cond_4

    .line 306
    move-object v6, v5

    const-string/jumbo v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_1

    .line 307
    :cond_4
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 309
    .end local v4    # "arrays":I
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_5
    move v6, v2

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_6

    move v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_6

    move-object v6, v0

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    .line 310
    move-object v6, v0

    const/4 v7, 0x1

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 311
    :cond_6
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static signatureToPrimitive(C)Lgnu/bytecode/PrimType;
    .locals 2

    .prologue
    .line 181
    move v0, p0

    .local v0, "sig":C
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 193
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "sig":C
    :goto_0
    return-object v0

    .line 183
    .restart local v0    # "sig":C
    :sswitch_0
    sget-object v1, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 184
    :sswitch_1
    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 185
    :sswitch_2
    sget-object v1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 186
    :sswitch_3
    sget-object v1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 187
    :sswitch_4
    sget-object v1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 188
    :sswitch_5
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 189
    :sswitch_6
    sget-object v1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 190
    :sswitch_7
    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 191
    :sswitch_8
    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v0, v1

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x46 -> :sswitch_3
        0x49 -> :sswitch_5
        0x4a -> :sswitch_6
        0x53 -> :sswitch_4
        0x56 -> :sswitch_8
        0x5a -> :sswitch_7
    .end sparse-switch
.end method

.method public static signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "sig":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "sig":Ljava/lang/String;
    return-object v0
.end method

.method public static signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;
    .locals 9

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "sig":Ljava/lang/String;
    move v1, p1

    .local v1, "off":I
    move v2, p2

    .local v2, "len":I
    move v5, v2

    if-nez v5, :cond_0

    .line 200
    const/4 v5, 0x0

    move-object v0, v5

    .line 216
    .end local v0    # "sig":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 201
    .restart local v0    # "sig":Ljava/lang/String;
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v3, v5

    .line 203
    .local v3, "c":C
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 205
    move v5, v3

    invoke-static {v5}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v5

    move-object v4, v5

    .line 206
    .local v4, "type":Lgnu/bytecode/Type;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 207
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 209
    .end local v4    # "type":Lgnu/bytecode/Type;
    :cond_1
    move v5, v3

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    .line 211
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v7}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object v5

    move-object v4, v5

    .line 212
    .restart local v4    # "type":Lgnu/bytecode/Type;
    move-object v5, v4

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v4

    invoke-static {v5}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v5

    goto :goto_1

    .line 214
    .end local v4    # "type":Lgnu/bytecode/Type;
    :cond_3
    move v5, v3

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_4

    move v5, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    move-object v5, v0

    const/16 v6, 0x3b

    move v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_4

    .line 215
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v1

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 216
    :cond_4
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method protected static swappedCompareResult(I)I
    .locals 3

    .prologue
    .line 434
    move v0, p0

    .local v0, "code":I
    move v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "code":I
    return v0

    .restart local v0    # "code":I
    :cond_0
    move v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public abstract coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public abstract compare(Lgnu/bytecode/Type;)I
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 7

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    new-instance v2, Ljava/lang/Error;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unimplemented emitCoerceFromObject for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 0
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 479
    return-void
.end method

.method public emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "stackType":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    .line 474
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 453
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public getRealType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public final getSize()I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Type;->size:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return v0
.end method

.method public getSizeInWords()I
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Type;->size:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Type;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 615
    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/Type;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Type;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isExisting()Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/Type;
    return v0
.end method

.method public final isSubtype(Lgnu/bytecode/Type;)Z
    .locals 5

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    move v2, v3

    .line 360
    .local v2, "comp":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/bytecode/Type;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Type;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final isVoid()Z
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Type;->size:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Type;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public promote()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Type;->size:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/Type;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setReflectClass(Ljava/lang/Class;)V
    .locals 4

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "rclass":Ljava/lang/Class;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    .line 605
    return-void
.end method

.method protected setSignature(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "sig":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Type;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Type;
    return-object v0
.end method
