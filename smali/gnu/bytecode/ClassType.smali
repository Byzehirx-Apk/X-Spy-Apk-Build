.class public Lgnu/bytecode/ClassType;
.super Lgnu/bytecode/ObjectType;
.source "ClassType.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Ljava/io/Externalizable;
.implements Lgnu/bytecode/Member;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/bytecode/ClassType$AbstractMethodFilter;
    }
.end annotation


# static fields
.field public static final JDK_1_1_VERSION:I = 0x2d0003

.field public static final JDK_1_2_VERSION:I = 0x2e0000

.field public static final JDK_1_3_VERSION:I = 0x2f0000

.field public static final JDK_1_4_VERSION:I = 0x300000

.field public static final JDK_1_5_VERSION:I = 0x310000

.field public static final JDK_1_6_VERSION:I = 0x320000

.field public static final JDK_1_7_VERSION:I = 0x330000

.field public static final noClasses:[Lgnu/bytecode/ClassType;


# instance fields
.field Code_name_index:I

.field ConstantValue_name_index:I

.field LineNumberTable_name_index:I

.field LocalVariableTable_name_index:I

.field access_flags:I

.field attributes:Lgnu/bytecode/Attribute;

.field classfileFormatVersion:I

.field constants:Lgnu/bytecode/ConstantPool;

.field public constructor:Lgnu/bytecode/Method;

.field emitDebugInfo:Z

.field enclosingMember:Lgnu/bytecode/Member;

.field fields:Lgnu/bytecode/Field;

.field fields_count:I

.field firstInnerClass:Lgnu/bytecode/ClassType;

.field interfaceIndexes:[I

.field interfaces:[Lgnu/bytecode/ClassType;

.field last_field:Lgnu/bytecode/Field;

.field last_method:Lgnu/bytecode/Method;

.field methods:Lgnu/bytecode/Method;

.field methods_count:I

.field nextInnerClass:Lgnu/bytecode/ClassType;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field superClass:Lgnu/bytecode/ClassType;

.field superClassIndex:I

.field thisClassIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    move-object v1, v0

    const v2, 0x2d0003

    iput v2, v1, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 73
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 86
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 479
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "class_name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    move-object v2, v0

    const v3, 0x2d0003

    iput v3, v2, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 73
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 86
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 484
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "superClass":Lgnu/bytecode/ClassType;
    move-object v3, v0

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v2, v3

    .line 61
    .local v2, "type":Lgnu/bytecode/ClassType;
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v3, :cond_0

    .line 62
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 63
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static to_utf8(Ljava/lang/String;)[B
    .locals 12

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v7, v0

    if-nez v7, :cond_0

    .line 1196
    const/4 v7, 0x0

    move-object v0, v7

    .line 1223
    .end local v0    # "str":Ljava/lang/String;
    .local v1, "str_len":I
    .local v2, "utf_len":I
    .local v3, "buffer":[B
    .local v4, "j":I
    .local v5, "i":I
    :goto_0
    return-object v0

    .line 1197
    .end local v1    # "str_len":I
    .end local v2    # "utf_len":I
    .end local v3    # "buffer":[B
    .end local v4    # "j":I
    .end local v5    # "i":I
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v7

    .line 1198
    .restart local v1    # "str_len":I
    const/4 v7, 0x0

    move v2, v7

    .line 1199
    .restart local v2    # "utf_len":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_1
    move v7, v3

    move v8, v1

    if-ge v7, v8, :cond_3

    .line 1200
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    .line 1201
    .local v4, "c":I
    move v7, v4

    if-lez v7, :cond_1

    move v7, v4

    const/16 v8, 0x7f

    if-gt v7, v8, :cond_1

    .line 1202
    add-int/lit8 v2, v2, 0x1

    .line 1199
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1203
    :cond_1
    move v7, v4

    const/16 v8, 0x7ff

    if-gt v7, v8, :cond_2

    .line 1204
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 1206
    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 1208
    .end local v4    # "c":I
    :cond_3
    move v7, v2

    new-array v7, v7, [B

    move-object v3, v7

    .line 1209
    .local v3, "buffer":[B
    const/4 v7, 0x0

    move v4, v7

    .line 1210
    .local v4, "j":I
    const/4 v7, 0x0

    move v5, v7

    .restart local v5    # "i":I
    :goto_3
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_6

    .line 1211
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 1212
    .local v6, "c":I
    move v7, v6

    if-lez v7, :cond_4

    move v7, v6

    const/16 v8, 0x7f

    if-gt v7, v8, :cond_4

    .line 1213
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move v9, v6

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1210
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1214
    :cond_4
    move v7, v6

    const/16 v8, 0x7ff

    if-gt v7, v8, :cond_5

    .line 1215
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0xc0

    move v10, v6

    const/4 v11, 0x6

    shr-int/lit8 v10, v10, 0x6

    const/16 v11, 0x1f

    and-int/lit8 v10, v10, 0x1f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1216
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x80

    move v10, v6

    const/4 v11, 0x0

    shr-int/lit8 v10, v10, 0x0

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto :goto_4

    .line 1218
    :cond_5
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0xe0

    move v10, v6

    const/16 v11, 0xc

    shr-int/lit8 v10, v10, 0xc

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1219
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x80

    move v10, v6

    const/4 v11, 0x6

    shr-int/lit8 v10, v10, 0x6

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1220
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x80

    move v10, v6

    const/4 v11, 0x0

    shr-int/lit8 v10, v10, 0x0

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto :goto_4

    .line 1223
    .end local v6    # "c":I
    :cond_6
    move-object v7, v3

    move-object v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method declared-synchronized addEnclosingMember()V
    .locals 10

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v8, p0

    monitor-enter v8

    move-object v5, v0

    :try_start_0
    iget v5, v5, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x18

    and-int/lit8 v5, v5, 0x18

    const/16 v6, 0x10

    if-eq v5, v6, :cond_0

    .line 208
    .line 238
    :goto_0
    monitor-exit v8

    return-void

    .line 209
    :cond_0
    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, v5

    .line 210
    .local v1, "clas":Ljava/lang/Class;
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/bytecode/ClassType;->flags:I

    const/16 v7, 0x8

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lgnu/bytecode/ClassType;->flags:I

    .line 214
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    move-object v2, v5

    .line 215
    .local v2, "dclas":Ljava/lang/Class;
    move-object v5, v2

    if-nez v5, :cond_1

    .line 216
    goto :goto_0

    .line 217
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-nez v5, :cond_3

    .line 219
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 220
    .local v3, "rmeth":Ljava/lang/reflect/Method;
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 222
    move-object v5, v0

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v6

    iput-object v6, v5, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v4, v5

    .line 226
    .local v4, "rcons":Ljava/lang/reflect/Constructor;
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 228
    move-object v5, v0

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;

    move-result-object v6

    iput-object v6, v5, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .line 229
    goto :goto_0

    .line 232
    .end local v3    # "rmeth":Ljava/lang/reflect/Method;
    .end local v4    # "rcons":Ljava/lang/reflect/Constructor;
    :cond_3
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    iput-object v6, v5, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    goto :goto_0

    .line 207
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "dclas":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public addField()Lgnu/bytecode/Field;
    .locals 5

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    new-instance v1, Lgnu/bytecode/Field;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public addField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 7

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v3, Lgnu/bytecode/Field;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v2, v3

    .line 578
    .local v2, "field":Lgnu/bytecode/Field;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 579
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;
    .locals 8

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    new-instance v4, Lgnu/bytecode/Field;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v3, v4

    .line 584
    .local v3, "field":Lgnu/bytecode/Field;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 585
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/Field;->setType(Lgnu/bytecode/Type;)V

    .line 586
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;
    .locals 8

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move v3, p3

    .local v3, "flags":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v5

    move-object v4, v5

    .line 592
    .local v4, "field":Lgnu/bytecode/Field;
    move-object v5, v4

    move v6, v3

    iput v6, v5, Lgnu/bytecode/Field;->flags:I

    .line 593
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public declared-synchronized addFields()V
    .locals 12

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v10, p0

    monitor-enter v10

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v1, v6

    .line 606
    .local v1, "clas":Ljava/lang/Class;
    move-object v6, v1

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v2, v6

    .line 611
    .line 612
    .local v2, "fields":[Ljava/lang/reflect/Field;
    :goto_0
    move-object v6, v2

    :try_start_2
    array-length v6, v6

    move v3, v6

    .line 613
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 615
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 616
    .local v5, "field":Ljava/lang/reflect/Field;
    const-string/jumbo v6, "this$0"

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 617
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/bytecode/ClassType;->flags:I

    const/16 v8, 0x20

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lgnu/bytecode/ClassType;->flags:I

    .line 618
    :cond_0
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v6

    .line 613
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 608
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 610
    .local v3, "ex":Ljava/lang/SecurityException;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v2, v6

    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_0

    .line 621
    .local v3, "count":I
    .restart local v4    # "i":I
    :cond_1
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/bytecode/ClassType;->flags:I

    const/4 v8, 0x1

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/bytecode/ClassType;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    monitor-exit v10

    return-void

    .line 602
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "count":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public addInterface(Lgnu/bytecode/ClassType;)V
    .locals 9

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "newInterface":Lgnu/bytecode/ClassType;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 454
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 455
    .local v2, "oldCount":I
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Lgnu/bytecode/ClassType;

    iput-object v5, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 467
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    move v5, v2

    move-object v6, v1

    aput-object v6, v4, v5

    .line 468
    :goto_1
    return-void

    .line 459
    .end local v2    # "oldCount":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v4, v4

    move v2, v4

    .line 460
    .restart local v2    # "oldCount":I
    move v4, v2

    move v3, v4

    .local v3, "i":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_3

    .line 461
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 462
    goto :goto_1

    .line 463
    :cond_3
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lgnu/bytecode/ClassType;

    move-object v3, v4

    .line 464
    .local v3, "newInterfaces":[Lgnu/bytecode/ClassType;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public addMemberClass(Lgnu/bytecode/ClassType;)V
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "member":Lgnu/bytecode/ClassType;
    const/4 v4, 0x0

    move-object v2, v4

    .line 155
    .local v2, "prev":Lgnu/bytecode/ClassType;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    move-object v3, v4

    .line 156
    .local v3, "entry":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 158
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 159
    .line 167
    :goto_1
    return-void

    .line 160
    :cond_0
    move-object v4, v3

    move-object v2, v4

    .line 161
    move-object v4, v3

    iget-object v4, v4, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    move-object v3, v4

    goto :goto_0

    .line 163
    :cond_1
    move-object v4, v2

    if-nez v4, :cond_2

    .line 164
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .line 167
    :goto_2
    goto :goto_1

    .line 166
    :cond_2
    move-object v4, v2

    move-object v5, v1

    iput-object v5, v4, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_2
.end method

.method public declared-synchronized addMemberClasses()V
    .locals 11

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v9, p0

    monitor-enter v9

    move-object v6, v0

    :try_start_0
    iget v6, v6, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x14

    and-int/lit8 v6, v6, 0x14

    const/16 v7, 0x10

    if-eq v6, v7, :cond_0

    .line 243
    .line 256
    :goto_0
    monitor-exit v9

    return-void

    .line 244
    :cond_0
    move-object v6, v0

    :try_start_1
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 245
    .local v1, "clas":Ljava/lang/Class;
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/bytecode/ClassType;->flags:I

    const/4 v8, 0x4

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lgnu/bytecode/ClassType;->flags:I

    .line 246
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 247
    .local v2, "memberClasses":[Ljava/lang/Class;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 248
    .local v3, "numMembers":I
    move v6, v3

    if-lez v6, :cond_1

    .line 250
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 252
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v5, v6

    .line 253
    .local v5, "member":Lgnu/bytecode/ClassType;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    .end local v4    # "i":I
    .end local v5    # "member":Lgnu/bytecode/ClassType;
    :cond_1
    goto :goto_0

    .line 242
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "memberClasses":[Ljava/lang/Class;
    .end local v3    # "numMembers":I
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method addMethod()Lgnu/bytecode/Method;
    .locals 6

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    new-instance v1, Lgnu/bytecode/Method;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public addMethod(Ljava/lang/String;)Lgnu/bytecode/Method;
    .locals 5

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 9

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "flags":I
    new-instance v4, Lgnu/bytecode/Method;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    move-object v3, v4

    .line 649
    .local v3, "method":Lgnu/bytecode/Method;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Method;->setName(Ljava/lang/String;)V

    .line 650
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public declared-synchronized addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 10

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "flags":I
    move-object v3, p3

    .local v3, "arg_types":[Lgnu/bytecode/Type;
    move-object v4, p4

    .local v4, "return_type":Lgnu/bytecode/Type;
    move-object v9, p0

    monitor-enter v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    :try_start_0
    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 668
    .local v5, "method":Lgnu/bytecode/Method;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v2

    move-object v7, v5

    iget v7, v7, Lgnu/bytecode/Method;->access_flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v6, v7

    move v7, v2

    if-ne v6, v7, :cond_0

    .line 671
    move-object v6, v5

    move-object v0, v6

    .line 675
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    monitor-exit v9

    return-object v0

    .line 672
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    :try_start_1
    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 673
    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 674
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 667
    .end local v5    # "method":Lgnu/bytecode/Method;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public addMethod(Ljava/lang/String;Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 8

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "signature":Ljava/lang/String;
    move v3, p3

    .local v3, "flags":I
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v4, v5

    .line 704
    .local v4, "meth":Lgnu/bytecode/Method;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/bytecode/Method;->setSignature(Ljava/lang/String;)V

    .line 705
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;
    .locals 10

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg_types":[Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "return_type":Lgnu/bytecode/Type;
    move v4, p4

    .local v4, "flags":I
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;
    .locals 11

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "method":Ljava/lang/reflect/Constructor;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 693
    .local v2, "paramTypes":[Ljava/lang/Class;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    move v3, v6

    .line 694
    .local v3, "modifiers":I
    move-object v6, v2

    array-length v6, v6

    move v4, v6

    .line 695
    .local v4, "j":I
    move v6, v4

    new-array v6, v6, [Lgnu/bytecode/Type;

    move-object v5, v6

    .line 696
    .local v5, "args":[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v6, v4

    if-ltz v6, :cond_0

    .line 697
    move-object v6, v5

    move v7, v4

    move-object v8, v2

    move v9, v4

    aget-object v8, v8, v9

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_0

    .line 698
    :cond_0
    move-object v6, v0

    const-string/jumbo v7, "<init>"

    move v8, v3

    move-object v9, v5

    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 12

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    move v2, v7

    .line 681
    .local v2, "modifiers":I
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 682
    .local v3, "paramTypes":[Ljava/lang/Class;
    move-object v7, v3

    array-length v7, v7

    move v4, v7

    .line 683
    .local v4, "j":I
    move v7, v4

    new-array v7, v7, [Lgnu/bytecode/Type;

    move-object v5, v7

    .line 684
    .local v5, "args":[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v7, v4

    if-ltz v7, :cond_0

    .line 685
    move-object v7, v5

    move v8, v4

    move-object v9, v3

    move v10, v4

    aget-object v9, v9, v10

    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_0

    .line 686
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    move-object v6, v7

    .line 687
    .local v6, "rtype":Lgnu/bytecode/Type;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    move v9, v2

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public declared-synchronized addMethods(Ljava/lang/Class;)V
    .locals 12

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v10, p0

    monitor-enter v10

    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    :try_start_0
    iget v8, v8, Lgnu/bytecode/ClassType;->flags:I

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v2, v7

    .line 984
    .line 985
    .local v2, "methods":[Ljava/lang/reflect/Method;
    :goto_0
    move-object v7, v2

    :try_start_2
    array-length v7, v7

    move v3, v7

    .line 986
    .local v3, "count":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 988
    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 989
    .local v5, "method":Ljava/lang/reflect/Method;
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 990
    .line 986
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 981
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 983
    .local v3, "ex":Ljava/lang/SecurityException;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v2, v7

    .restart local v2    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_0

    .line 991
    .local v3, "count":I
    .restart local v4    # "i":I
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_2

    .line 997
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    move-object v7, v1

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 1002
    .line 1003
    .local v4, "cmethods":[Ljava/lang/reflect/Constructor;
    :goto_3
    move-object v7, v4

    :try_start_4
    array-length v7, v7

    move v3, v7

    .line 1004
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_4
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_3

    .line 1006
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 1007
    .local v6, "method":Ljava/lang/reflect/Constructor;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1008
    .line 1004
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 999
    .end local v5    # "i":I
    .end local v6    # "method":Ljava/lang/reflect/Constructor;
    .local v4, "i":I
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 1001
    .local v5, "ex":Ljava/lang/SecurityException;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v4, v7

    .local v4, "cmethods":[Ljava/lang/reflect/Constructor;
    goto :goto_3

    .line 1009
    .local v5, "i":I
    .restart local v6    # "method":Ljava/lang/reflect/Constructor;
    :cond_2
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    goto :goto_5

    .line 1011
    .end local v6    # "method":Ljava/lang/reflect/Constructor;
    :cond_3
    monitor-exit v10

    return-void

    .line 974
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    .end local v3    # "count":I
    .end local v4    # "cmethods":[Ljava/lang/reflect/Constructor;
    .end local v5    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public final addModifiers(I)V
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/ClassType;->access_flags:I

    move v4, v1

    or-int/2addr v3, v4

    iput v3, v2, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public checkSingleAbstractMethod()Lgnu/bytecode/Method;
    .locals 12

    .prologue
    .line 1363
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getAbstractMethods()[Lgnu/bytecode/Method;

    move-result-object v9

    move-object v1, v9

    .line 1364
    .local v1, "methods":[Lgnu/bytecode/Method;
    move-object v9, v1

    array-length v9, v9

    move v2, v9

    .line 1365
    .local v2, "nmethods":I
    const/4 v9, 0x0

    move-object v3, v9

    .line 1366
    .local v3, "result":Lgnu/bytecode/Method;
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_0
    move v9, v4

    move v10, v2

    if-ge v9, v10, :cond_2

    .line 1368
    move-object v9, v1

    move v10, v4

    aget-object v9, v9, v10

    move-object v5, v9

    .line 1369
    .local v5, "meth":Lgnu/bytecode/Method;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1370
    .local v6, "mname":Ljava/lang/String;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v9

    move-object v7, v9

    .line 1372
    .local v7, "ptypes":[Lgnu/bytecode/Type;
    move-object v9, v0

    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v9

    move-object v8, v9

    .line 1373
    .local v8, "mimpl":Lgnu/bytecode/Method;
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    invoke-virtual {v9}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1374
    .line 1366
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1375
    :cond_0
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 1376
    const/4 v9, 0x0

    move-object v0, v9

    .line 1379
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    .end local v5    # "meth":Lgnu/bytecode/Method;
    .end local v6    # "mname":Ljava/lang/String;
    .end local v7    # "ptypes":[Lgnu/bytecode/Type;
    .end local v8    # "mimpl":Lgnu/bytecode/Method;
    :goto_2
    return-object v0

    .line 1377
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    .restart local v5    # "meth":Lgnu/bytecode/Method;
    .restart local v6    # "mname":Ljava/lang/String;
    .restart local v7    # "ptypes":[Lgnu/bytecode/Type;
    .restart local v8    # "mimpl":Lgnu/bytecode/Method;
    :cond_1
    move-object v9, v5

    move-object v3, v9

    goto :goto_1

    .line 1379
    .end local v5    # "meth":Lgnu/bytecode/Method;
    .end local v6    # "mname":Ljava/lang/String;
    .end local v7    # "ptypes":[Lgnu/bytecode/Type;
    .end local v8    # "mimpl":Lgnu/bytecode/Method;
    :cond_2
    move-object v9, v3

    move-object v0, v9

    goto :goto_2
.end method

.method public cleanupAfterCompilation()V
    .locals 4

    .prologue
    .line 1346
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    move-object v1, v2

    .local v1, "meth":Lgnu/bytecode/Method;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1347
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Method;->cleanupAfterCompilation()V

    .line 1346
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 1349
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1350
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    .line 1351
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 1352
    return-void
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 6

    .prologue
    .line 1282
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v4, v1

    sget-object v5, Lgnu/bytecode/ClassType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne v4, v5, :cond_0

    .line 1283
    const/4 v4, 0x1

    move v0, v4

    .line 1302
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return v0

    .line 1284
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/ClassType;

    if-nez v4, :cond_1

    .line 1285
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    invoke-static {v4}, Lgnu/bytecode/ClassType;->swappedCompareResult(I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 1286
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1287
    .local v2, "name":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1288
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1289
    :cond_2
    move-object v4, v1

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v3, v4

    .line 1290
    .local v3, "cother":Lgnu/bytecode/ClassType;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1291
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 1292
    :cond_3
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1293
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1294
    :cond_4
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_6

    .line 1295
    move-object v4, v3

    sget-object v5, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_5

    const/4 v4, -0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 1296
    :cond_6
    move-object v4, v3

    sget-object v5, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_8

    .line 1297
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_7
    const/4 v4, -0x1

    goto :goto_2

    .line 1298
    :cond_8
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1299
    move-object v4, v3

    sget-object v5, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_9

    const/4 v4, -0x1

    :goto_3
    move v0, v4

    goto :goto_0

    :cond_9
    const/4 v4, -0x2

    goto :goto_3

    .line 1300
    :cond_a
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1301
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    :goto_4
    move v0, v4

    goto/16 :goto_0

    :cond_b
    const/4 v4, -0x2

    goto :goto_4

    .line 1302
    :cond_c
    const/4 v4, -0x3

    move v0, v4

    goto/16 :goto_0
.end method

.method public final countMethods(Lgnu/bytecode/Filter;I)I
    .locals 9

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":I
    new-instance v4, Ljava/util/Vector;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move-object v3, v4

    .line 739
    .local v3, "vec":Ljava/util/Vector;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v4

    .line 740
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public doFixups()V
    .locals 12

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v6, :cond_0

    .line 1042
    move-object v6, v0

    new-instance v7, Lgnu/bytecode/ConstantPool;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v7, v6, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1043
    :cond_0
    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->thisClassIndex:I

    if-nez v6, :cond_1

    .line 1044
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v7

    iget v7, v7, Lgnu/bytecode/CpoolClass;->index:I

    iput v7, v6, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 1045
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    move-object v7, v0

    if-ne v6, v7, :cond_2

    .line 1046
    move-object v6, v0

    const/4 v7, 0x0

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1047
    :cond_2
    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-gez v6, :cond_3

    .line 1048
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_0
    iput v7, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 1050
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v6, :cond_5

    .line 1052
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v6, v6

    move v1, v6

    .line 1053
    .local v1, "n":I
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [I

    iput-object v7, v6, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 1054
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_1
    move v6, v2

    move v7, v1

    if-ge v6, v7, :cond_5

    .line 1055
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    move v10, v2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v8

    iget v8, v8, Lgnu/bytecode/CpoolClass;->index:I

    aput v8, v6, v7

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1048
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v7

    iget v7, v7, Lgnu/bytecode/CpoolClass;->index:I

    goto :goto_0

    .line 1057
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    move-object v1, v6

    .local v1, "field":Lgnu/bytecode/Field;
    :goto_2
    move-object v6, v1

    if-eqz v6, :cond_6

    .line 1058
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/bytecode/Field;->assign_constants(Lgnu/bytecode/ClassType;)V

    .line 1057
    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    move-object v1, v6

    goto :goto_2

    .line 1060
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    move-object v1, v6

    .local v1, "method":Lgnu/bytecode/Method;
    :goto_3
    move-object v6, v1

    if-eqz v6, :cond_7

    .line 1061
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Method;->assignConstants()V

    .line 1060
    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    move-object v1, v6

    goto :goto_3

    .line 1062
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v6, v6, Lgnu/bytecode/Method;

    if-eqz v6, :cond_a

    .line 1064
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/EnclosingMethodAttr;->getFirstEnclosingMethod(Lgnu/bytecode/Attribute;)Lgnu/bytecode/EnclosingMethodAttr;

    move-result-object v6

    move-object v1, v6

    .line 1066
    .local v1, "attr":Lgnu/bytecode/EnclosingMethodAttr;
    move-object v6, v1

    if-nez v6, :cond_8

    .line 1067
    new-instance v6, Lgnu/bytecode/EnclosingMethodAttr;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v1, v6

    .line 1068
    :cond_8
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v7, Lgnu/bytecode/Method;

    iput-object v7, v6, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    .line 1069
    .line 1072
    .end local v1    # "attr":Lgnu/bytecode/EnclosingMethodAttr;
    :cond_9
    :goto_4
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    move-object v1, v6

    .local v1, "member":Lgnu/bytecode/ClassType;
    :goto_5
    move-object v6, v1

    if-eqz v6, :cond_b

    .line 1075
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v6

    .line 1073
    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    move-object v1, v6

    goto :goto_5

    .line 1070
    .local v1, "method":Lgnu/bytecode/Method;
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v6, v6, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_9

    .line 1071
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v6

    goto :goto_4

    .line 1078
    .local v1, "member":Lgnu/bytecode/ClassType;
    :cond_b
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/InnerClassesAttr;->getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;

    move-result-object v6

    move-object v1, v6

    .line 1080
    .local v1, "innerAttr":Lgnu/bytecode/InnerClassesAttr;
    move-object v6, v1

    if-eqz v6, :cond_c

    .line 1083
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1086
    :cond_c
    move-object v6, v0

    move-object v7, v0

    invoke-static {v6, v7}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 1092
    const/4 v6, 0x1

    move v2, v6

    .restart local v2    # "i":I
    :goto_6
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v7, v7, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v6, v7, :cond_11

    .line 1094
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v7, v2

    aget-object v6, v6, v7

    move-object v3, v6

    .line 1095
    .local v3, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v6, v3

    instance-of v6, v6, Lgnu/bytecode/CpoolClass;

    if-nez v6, :cond_e

    .line 1096
    .line 1092
    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1097
    :cond_e
    move-object v6, v3

    check-cast v6, Lgnu/bytecode/CpoolClass;

    move-object v4, v6

    .line 1098
    .local v4, "centry":Lgnu/bytecode/CpoolClass;
    move-object v6, v4

    iget-object v6, v6, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    instance-of v6, v6, Lgnu/bytecode/ClassType;

    if-nez v6, :cond_f

    .line 1099
    goto :goto_7

    .line 1100
    :cond_f
    move-object v6, v4

    iget-object v6, v6, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    check-cast v6, Lgnu/bytecode/ClassType;

    move-object v5, v6

    .line 1101
    .local v5, "ctype":Lgnu/bytecode/ClassType;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getEnclosingMember()Lgnu/bytecode/Member;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1103
    move-object v6, v1

    if-nez v6, :cond_10

    .line 1104
    new-instance v6, Lgnu/bytecode/InnerClassesAttr;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v1, v6

    .line 1105
    :cond_10
    move-object v6, v1

    move-object v7, v4

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/InnerClassesAttr;->addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V

    goto :goto_7

    .line 1108
    .end local v3    # "entry":Lgnu/bytecode/CpoolEntry;
    .end local v4    # "centry":Lgnu/bytecode/CpoolClass;
    .end local v5    # "ctype":Lgnu/bytecode/ClassType;
    :cond_11
    move-object v6, v1

    if-eqz v6, :cond_12

    .line 1110
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1111
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/bytecode/InnerClassesAttr;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 1113
    :cond_12
    return-void
.end method

.method public getAbstractMethods()[Lgnu/bytecode/Method;
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/ClassType$AbstractMethodFilter;->instance:Lgnu/bytecode/ClassType$AbstractMethodFilter;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public getClassfileMajorVersion()S
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const/16 v2, 0x10

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public getClassfileMinorVersion()S
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public getClassfileVersion()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public final getConstant(I)Lgnu/bytecode/CpoolEntry;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v2, v2, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v3, v3, Lgnu/bytecode/ConstantPool;->count:I

    if-le v2, v3, :cond_1

    .line 96
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 97
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v2, v2, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public getDeclaredClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "simpleName":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->addMemberClasses()V

    .line 172
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    move-object v2, v3

    .local v2, "member":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 175
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    move-object v3, v2

    move-object v0, v3

    .line 178
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_1
    return-object v0

    .line 173
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    move-object v2, v3

    goto :goto_0

    .line 178
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 5

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v3

    move-object v2, v3

    .local v2, "field":Lgnu/bytecode/Field;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 522
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    move-object v3, v2

    move-object v0, v3

    .line 525
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_1
    return-object v0

    .line 520
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    move-object v2, v3

    goto :goto_0

    .line 525
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public declared-synchronized getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 12

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "argCount":I
    move-object v10, p0

    monitor-enter v10

    const/4 v6, 0x0

    move-object v3, v6

    .line 914
    .local v3, "result":Lgnu/bytecode/Method;
    :try_start_0
    const-string/jumbo v6, "<init>"

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 915
    .local v4, "needOuterLinkArg":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v6

    move-object v5, v6

    .line 916
    .local v5, "method":Lgnu/bytecode/Method;
    :goto_1
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 918
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    move v7, v4

    add-int/2addr v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 921
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 922
    new-instance v6, Ljava/lang/Error;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ambiguous call to getDeclaredMethod(\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")\n - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .end local v4    # "needOuterLinkArg":I
    .end local v5    # "method":Lgnu/bytecode/Method;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0

    .line 914
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 925
    .restart local v4    # "needOuterLinkArg":I
    .restart local v5    # "method":Lgnu/bytecode/Method;
    :cond_1
    move-object v6, v5

    move-object v3, v6

    .line 916
    :cond_2
    move-object v6, v5

    :try_start_1
    iget-object v6, v6, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v6

    goto :goto_1

    .line 928
    :cond_3
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    monitor-exit v10

    return-object v0
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 14

    .prologue
    .line 880
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "arg_types":[Lgnu/bytecode/Type;
    const-string/jumbo v11, "<init>"

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    move v3, v11

    .line 881
    .local v3, "needOuterLinkArg":I
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v11

    move-object v4, v11

    .line 882
    .local v4, "method":Lgnu/bytecode/Method;
    :goto_1
    move-object v11, v4

    if-eqz v11, :cond_9

    .line 884
    move-object v11, v1

    move-object v12, v4

    invoke-virtual {v12}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 885
    .line 882
    :cond_0
    :goto_2
    move-object v11, v4

    iget-object v11, v11, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    move-object v4, v11

    goto :goto_1

    .line 880
    .end local v3    # "needOuterLinkArg":I
    .end local v4    # "method":Lgnu/bytecode/Method;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 886
    .restart local v3    # "needOuterLinkArg":I
    .restart local v4    # "method":Lgnu/bytecode/Method;
    :cond_2
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v11

    move-object v5, v11

    .line 887
    .local v5, "method_args":[Lgnu/bytecode/Type;
    move-object v11, v2

    if-eqz v11, :cond_3

    move-object v11, v2

    move-object v12, v5

    if-ne v11, v12, :cond_4

    move v11, v3

    if-nez v11, :cond_4

    .line 889
    :cond_3
    move-object v11, v4

    move-object v0, v11

    .line 907
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    .end local v5    # "method_args":[Lgnu/bytecode/Type;
    :goto_3
    return-object v0

    .line 890
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    .restart local v5    # "method_args":[Lgnu/bytecode/Type;
    :cond_4
    move-object v11, v2

    array-length v11, v11

    move v6, v11

    .line 891
    .local v6, "i":I
    move v11, v6

    move-object v12, v5

    array-length v12, v12

    move v13, v3

    sub-int/2addr v12, v13

    if-eq v11, v12, :cond_5

    .line 892
    goto :goto_2

    .line 893
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, -0x1

    move v11, v6

    if-ltz v11, :cond_7

    .line 895
    move-object v11, v5

    move v12, v6

    move v13, v3

    add-int/2addr v12, v13

    aget-object v11, v11, v12

    move-object v7, v11

    .line 896
    .local v7, "meth_type":Lgnu/bytecode/Type;
    move-object v11, v2

    move v12, v6

    aget-object v11, v11, v12

    move-object v8, v11

    .line 897
    .local v8, "need_type":Lgnu/bytecode/Type;
    move-object v11, v7

    move-object v12, v8

    if-eq v11, v12, :cond_5

    move-object v11, v8

    if-nez v11, :cond_6

    .line 898
    goto :goto_4

    .line 899
    :cond_6
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 900
    .local v9, "meth_sig":Ljava/lang/String;
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 901
    .local v10, "need_sig":Ljava/lang/String;
    move-object v11, v9

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 902
    .line 904
    .end local v7    # "meth_type":Lgnu/bytecode/Type;
    .end local v8    # "need_type":Lgnu/bytecode/Type;
    .end local v9    # "meth_sig":Ljava/lang/String;
    .end local v10    # "need_sig":Ljava/lang/String;
    :cond_7
    move v11, v6

    if-gez v11, :cond_0

    .line 905
    move-object v11, v4

    move-object v0, v11

    goto :goto_3

    .line 903
    .restart local v7    # "meth_type":Lgnu/bytecode/Type;
    .restart local v8    # "need_type":Lgnu/bytecode/Type;
    .restart local v9    # "meth_sig":Ljava/lang/String;
    .restart local v10    # "need_sig":Ljava/lang/String;
    :cond_8
    goto :goto_4

    .line 907
    .end local v5    # "method_args":[Lgnu/bytecode/Type;
    .end local v6    # "i":I
    .end local v7    # "meth_type":Lgnu/bytecode/Type;
    .end local v8    # "need_type":Lgnu/bytecode/Type;
    .end local v9    # "meth_sig":Ljava/lang/String;
    .end local v10    # "need_sig":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_3
.end method

.method public final declared-synchronized getDeclaredMethods()Lgnu/bytecode/Method;
    .locals 4

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lgnu/bytecode/ClassType;->flags:I

    const/16 v2, 0x12

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 725
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->addMethods(Ljava/lang/Class;)V

    .line 726
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    monitor-exit v3

    return-object v0

    .line 724
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 188
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v1, v1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    .line 189
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v0, v1

    .line 191
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getEnclosingMember()Lgnu/bytecode/Member;
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 197
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 5

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public declared-synchronized getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 11

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "mask":I
    move-object v10, p0

    monitor-enter v10

    move-object v7, v0

    move-object v3, v7

    .line 539
    .local v3, "cl":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v7, v3

    move-object v8, v1

    :try_start_0
    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v7

    move-object v4, v7

    .line 540
    .local v4, "field":Lgnu/bytecode/Field;
    move-object v7, v4

    if-eqz v7, :cond_1

    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    move-object v7, v4

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getModifiers()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    move v8, v2

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    .line 542
    :cond_0
    move-object v7, v4

    move-object v0, v7

    .line 555
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_1
    monitor-exit v10

    return-object v0

    .line 543
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_1
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v5, v7

    .line 544
    .local v5, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v7, v5

    if-eqz v7, :cond_3

    .line 546
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_2
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 548
    move-object v7, v5

    move v8, v6

    aget-object v7, v7, v8

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v7

    move-object v4, v7

    .line 549
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 550
    move-object v7, v4

    move-object v0, v7

    goto :goto_1

    .line 546
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 553
    .end local v6    # "i":I
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 554
    move-object v7, v3

    if-nez v7, :cond_4

    .line 555
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1

    .line 556
    :cond_4
    goto :goto_0

    .line 536
    .end local v4    # "field":Lgnu/bytecode/Field;
    .end local v5    # "interfaces":[Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public final getFieldCount()I
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->fields_count:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public final declared-synchronized getFields()Lgnu/bytecode/Field;
    .locals 4

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lgnu/bytecode/ClassType;->flags:I

    const/16 v2, 0x11

    and-int/lit8 v1, v1, 0x11

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 506
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->addFields()V

    .line 507
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    monitor-exit v3

    return-object v0

    .line 505
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public declared-synchronized getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 9

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-nez v4, :cond_1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/ClassType;->flags:I

    const/16 v5, 0x10

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 434
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 435
    .local v1, "reflectInterfaces":[Ljava/lang/Class;
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 436
    .local v2, "numInterfaces":I
    move-object v4, v0

    move v5, v2

    if-nez v5, :cond_0

    sget-object v5, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    :goto_0
    iput-object v5, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 439
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 440
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 436
    .end local v3    # "i":I
    :cond_0
    move v5, v2

    new-array v5, v5, [Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 442
    .end local v1    # "reflectInterfaces":[Ljava/lang/Class;
    .end local v2    # "numInterfaces":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    monitor-exit v8

    return-object v0

    .line 431
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public getMatchingMethods(Ljava/lang/String;[Lgnu/bytecode/Type;I)[Lgnu/bytecode/Method;
    .locals 12

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "paramTypes":[Lgnu/bytecode/Type;
    move v3, p3

    .local v3, "flags":I
    const/4 v8, 0x0

    move v4, v8

    .line 1016
    .local v4, "nMatches":I
    new-instance v8, Ljava/util/Vector;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Ljava/util/Vector;-><init>(I)V

    move-object v5, v8

    .line 1017
    .local v5, "matches":Ljava/util/Vector;
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    move-object v6, v8

    .local v6, "method":Lgnu/bytecode/Method;
    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_4

    .line 1019
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1020
    .line 1017
    :goto_1
    move-object v8, v6

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v8

    move-object v6, v8

    goto :goto_0

    .line 1021
    :cond_0
    move v8, v3

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    move-object v9, v6

    iget v9, v9, Lgnu/bytecode/Method;->access_flags:I

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-eq v8, v9, :cond_1

    .line 1022
    goto :goto_1

    .line 1023
    :cond_1
    move v8, v3

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move-object v9, v6

    iget v9, v9, Lgnu/bytecode/Method;->access_flags:I

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-le v8, v9, :cond_2

    .line 1024
    goto :goto_1

    .line 1025
    :cond_2
    move-object v8, v6

    iget-object v8, v8, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object v7, v8

    .line 1026
    .local v7, "mtypes":[Lgnu/bytecode/Type;
    move-object v8, v7

    array-length v8, v8

    move-object v9, v2

    array-length v9, v9

    if-eq v8, v9, :cond_3

    .line 1027
    goto :goto_1

    .line 1028
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1029
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1031
    .end local v7    # "mtypes":[Lgnu/bytecode/Type;
    :cond_4
    move v8, v4

    new-array v8, v8, [Lgnu/bytecode/Method;

    move-object v6, v8

    .line 1032
    .local v6, "result":[Lgnu/bytecode/Method;
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1033
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public declared-synchronized getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 11

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg_types":[Lgnu/bytecode/Type;
    move-object v10, p0

    monitor-enter v10

    move-object v7, v0

    move-object v3, v7

    .line 936
    .local v3, "cl":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v7, v3

    move-object v8, v1

    move-object v9, v2

    :try_start_0
    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 937
    .local v4, "method":Lgnu/bytecode/Method;
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 938
    move-object v7, v4

    move-object v0, v7

    .line 961
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    .end local v4    # "method":Lgnu/bytecode/Method;
    :goto_1
    monitor-exit v10

    return-object v0

    .line 939
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    .restart local v4    # "method":Lgnu/bytecode/Method;
    :cond_0
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v3, v7

    .line 940
    move-object v7, v3

    if-nez v7, :cond_1

    .line 941
    .line 943
    move-object v7, v0

    move-object v3, v7

    .line 946
    .end local v4    # "method":Lgnu/bytecode/Method;
    :goto_2
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v4, v7

    .line 947
    .local v4, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v7, v4

    if-eqz v7, :cond_3

    .line 949
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_3
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 951
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v6, v7

    .line 953
    .local v6, "method":Lgnu/bytecode/Method;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 954
    move-object v7, v6

    move-object v0, v7

    goto :goto_1

    .line 942
    .end local v5    # "i":I
    .end local v6    # "method":Lgnu/bytecode/Method;
    .local v4, "method":Lgnu/bytecode/Method;
    :cond_1
    goto :goto_0

    .line 949
    .local v4, "interfaces":[Lgnu/bytecode/ClassType;
    .restart local v5    # "i":I
    .restart local v6    # "method":Lgnu/bytecode/Method;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 957
    .end local v5    # "i":I
    .end local v6    # "method":Lgnu/bytecode/Method;
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 958
    move-object v7, v3

    if-nez v7, :cond_4

    .line 959
    .line 961
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1

    .line 960
    :cond_4
    goto :goto_2

    .line 933
    .end local v4    # "interfaces":[Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 11

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 714
    .local v2, "name":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 715
    .local v3, "parameterClasses":[Ljava/lang/Class;
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [Lgnu/bytecode/Type;

    move-object v4, v6

    .line 716
    .local v4, "parameterTypes":[Lgnu/bytecode/Type;
    move-object v6, v3

    array-length v6, v6

    move v5, v6

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_0

    .line 717
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_0

    .line 718
    :cond_0
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public final getMethodCount()I
    .locals 2

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->methods_count:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List",
            "<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object/from16 v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move/from16 v2, p2

    .local v2, "searchSupers":I
    move-object/from16 v3, p3

    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lgnu/bytecode/Method;>;"
    const/4 v10, 0x0

    move v4, v10

    .line 804
    .local v4, "count":I
    const/4 v10, 0x0

    move-object v5, v10

    .line 805
    .local v5, "inheritingPackage":Ljava/lang/String;
    move-object v10, v0

    move-object v6, v10

    .local v6, "ctype":Lgnu/bytecode/ClassType;
    :goto_0
    move-object v10, v6

    if-eqz v10, :cond_5

    .line 808
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 809
    .local v7, "curPackage":Ljava/lang/String;
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v10

    move-object v8, v10

    .line 810
    .local v8, "meth":Lgnu/bytecode/Method;
    :goto_1
    move-object v10, v8

    if-eqz v10, :cond_4

    .line 812
    move-object v10, v6

    move-object v11, v0

    if-eq v10, v11, :cond_2

    .line 814
    move-object v10, v8

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v10

    move v9, v10

    .line 815
    .local v9, "mmods":I
    move v10, v9

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    .line 816
    .line 810
    .end local v9    # "mmods":I
    :cond_0
    :goto_2
    move-object v10, v8

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v10

    move-object v8, v10

    goto :goto_1

    .line 817
    .restart local v9    # "mmods":I
    :cond_1
    move v10, v9

    const/4 v11, 0x5

    and-int/lit8 v10, v10, 0x5

    if-nez v10, :cond_2

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 819
    goto :goto_2

    .line 821
    .end local v9    # "mmods":I
    :cond_2
    move-object v10, v1

    move-object v11, v8

    invoke-interface {v10, v11}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 823
    move-object v10, v3

    if-eqz v10, :cond_3

    .line 826
    move-object v10, v3

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 831
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 835
    :cond_4
    move-object v10, v7

    move-object v5, v10

    .line 837
    move v10, v2

    if-nez v10, :cond_6

    .line 838
    .line 851
    .end local v7    # "curPackage":Ljava/lang/String;
    .end local v8    # "meth":Lgnu/bytecode/Method;
    :cond_5
    move v10, v4

    move v0, v10

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0

    .line 840
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    .restart local v7    # "curPackage":Ljava/lang/String;
    .restart local v8    # "meth":Lgnu/bytecode/Method;
    :cond_6
    move v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    .line 842
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v8, v10

    .line 843
    .local v8, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v10, v8

    if-eqz v10, :cond_7

    .line 845
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_3
    move v10, v9

    move-object v11, v8

    array-length v11, v11

    if-ge v10, v11, :cond_7

    .line 846
    move v10, v4

    move-object v11, v8

    move v12, v9

    aget-object v11, v11, v12

    move-object v12, v1

    move v13, v2

    move-object v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v11

    add-int/2addr v10, v11

    move v4, v10

    .line 845
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 806
    .end local v8    # "interfaces":[Lgnu/bytecode/ClassType;
    .end local v9    # "i":I
    :cond_7
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v6, v10

    goto :goto_0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I
    .locals 13

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":I
    move-object/from16 v3, p3

    .local v3, "result":[Lgnu/bytecode/Method;
    move/from16 v4, p4

    .local v4, "offset":I
    new-instance v8, Ljava/util/Vector;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move-object v5, v8

    .line 780
    .local v5, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lgnu/bytecode/Method;>;"
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v8

    .line 781
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    move v6, v8

    .line 782
    .local v6, "count":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 783
    move-object v8, v3

    move v9, v4

    move v10, v7

    add-int/2addr v9, v10

    move-object v10, v5

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/bytecode/Method;

    aput-object v10, v8, v9

    .line 782
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 784
    :cond_0
    move v8, v6

    move v0, v8

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public final getMethods()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;
    .locals 12

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":I
    new-instance v7, Ljava/util/Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move-object v3, v7

    .line 758
    .local v3, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lgnu/bytecode/Method;>;"
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v7

    .line 759
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    move v4, v7

    .line 760
    .local v4, "count":I
    move v7, v4

    new-array v7, v7, [Lgnu/bytecode/Method;

    move-object v5, v7

    .line 761
    .local v5, "result":[Lgnu/bytecode/Method;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 762
    move-object v7, v5

    move v8, v6

    move-object v9, v3

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/Method;

    aput-object v9, v7, v8

    .line 761
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 763
    :cond_0
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;Z)[Lgnu/bytecode/Method;
    .locals 6

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized getModifiers()I
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lgnu/bytecode/ClassType;->access_flags:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->flags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    iput v2, v1, Lgnu/bytecode/ClassType;->access_flags:I

    .line 106
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->access_flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    monitor-exit v3

    return v0

    .line 103
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public getOuterLinkType()Lgnu/bytecode/ClassType;
    .locals 3

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "this$0"

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 421
    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v2, v3

    .line 422
    .local v2, "index":I
    move v3, v2

    if-gez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public declared-synchronized getSimpleName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v10, p0

    monitor-enter v10

    move-object v7, v0

    :try_start_0
    iget v7, v7, Lgnu/bytecode/ClassType;->flags:I

    const/16 v8, 0x10

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_0

    .line 124
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v0, v7

    .line 149
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    .local v1, "name":Ljava/lang/String;
    .local v2, "dot":I
    .local v3, "dollar":I
    :goto_0
    monitor-exit v10

    return-object v0

    .line 126
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "dot":I
    .end local v3    # "dollar":I
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 130
    :cond_0
    move-object v7, v0

    :try_start_2
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 131
    .restart local v1    # "name":Ljava/lang/String;
    move-object v7, v1

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v2, v7

    .line 132
    .restart local v2    # "dot":I
    move v7, v2

    if-lez v7, :cond_1

    .line 133
    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 134
    :cond_1
    move-object v7, v1

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v3, v7

    .line 135
    .restart local v3    # "dollar":I
    move v7, v3

    if-ltz v7, :cond_3

    .line 137
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    .line 138
    .local v4, "len":I
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 139
    .local v5, "start":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 141
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 142
    .local v6, "ch":C
    move v7, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0x39

    if-gt v7, v8, :cond_2

    .line 143
    add-int/lit8 v5, v5, 0x1

    .line 146
    goto :goto_1

    .line 147
    .end local v6    # "ch":C
    :cond_2
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    move-object v1, v7

    .line 149
    .end local v4    # "len":I
    .end local v5    # "start":I
    :cond_3
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 120
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "dot":I
    .end local v3    # "dollar":I
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public final getStaticFlag()Z
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v1

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSuperclass()Lgnu/bytecode/ClassType;
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "java.lang.Object"

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->flags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 413
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    iput-object v2, v1, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 415
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    monitor-exit v3

    return-object v0

    .line 408
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    throw v0
.end method

.method public final hasOuterLink()Z
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v1

    .line 261
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassType;->flags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final implementsInterface(Lgnu/bytecode/ClassType;)Z
    .locals 7

    .prologue
    .line 1229
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "iface":Lgnu/bytecode/ClassType;
    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 1230
    const/4 v5, 0x1

    move v0, v5

    .line 1243
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return v0

    .line 1231
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v2, v5

    .line 1232
    .local v2, "baseClass":Lgnu/bytecode/ClassType;
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1233
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1234
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v3, v5

    .line 1235
    .local v3, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 1237
    move-object v5, v3

    array-length v5, v5

    move v4, v5

    .local v4, "i":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_3

    .line 1239
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1240
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1243
    .end local v4    # "i":I
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z
    .locals 13

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "declaring":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "receiver":Lgnu/bytecode/ObjectType;
    move/from16 v3, p3

    .local v3, "modifiers":I
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v10

    move v4, v10

    .line 330
    .local v4, "cmods":I
    move v10, v3

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    move v10, v4

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 331
    const/4 v10, 0x1

    move v0, v10

    .line 351
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return v0

    .line 332
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 333
    .local v5, "callerName":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 334
    .local v6, "className":Ljava/lang/String;
    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 335
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 336
    :cond_1
    move v10, v3

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_2

    .line 337
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 338
    :cond_2
    move-object v10, v5

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    move v7, v10

    .line 339
    .local v7, "dot":I
    move v10, v7

    if-ltz v10, :cond_3

    move-object v10, v5

    const/4 v11, 0x0

    move v12, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object v8, v10

    .line 340
    .local v8, "callerPackage":Ljava/lang/String;
    move-object v10, v6

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    move v7, v10

    .line 341
    move v10, v7

    if-ltz v10, :cond_4

    move-object v10, v6

    const/4 v11, 0x0

    move v12, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_2
    move-object v9, v10

    .line 342
    .local v9, "classPackage":Ljava/lang/String;
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 343
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 339
    .end local v8    # "callerPackage":Ljava/lang/String;
    .end local v9    # "classPackage":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, ""

    goto :goto_1

    .line 341
    .restart local v8    # "callerPackage":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, ""

    goto :goto_2

    .line 344
    .restart local v9    # "classPackage":Ljava/lang/String;
    :cond_5
    move v10, v4

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_6

    .line 345
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 346
    :cond_6
    move v10, v3

    const/4 v11, 0x4

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_8

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v2

    instance-of v10, v10, Lgnu/bytecode/ClassType;

    if-eqz v10, :cond_7

    move-object v10, v2

    check-cast v10, Lgnu/bytecode/ClassType;

    move-object v11, v0

    invoke-virtual {v10, v11}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 350
    :cond_7
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0

    .line 351
    :cond_8
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0
.end method

.method public isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "member":Lgnu/bytecode/Member;
    move-object v2, p2

    .local v2, "receiver":Lgnu/bytecode/ObjectType;
    move-object v3, v1

    invoke-interface {v3}, Lgnu/bytecode/Member;->getStaticFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    const/4 v3, 0x0

    move-object v2, v3

    .line 314
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v5, v2

    move-object v6, v1

    invoke-interface {v6}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0
.end method

.method public final isInterface()Z
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v1

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isSubclass(Lgnu/bytecode/ClassType;)Z
    .locals 5

    .prologue
    .line 1265
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/ClassType;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1266
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v3

    move v0, v3

    .line 1277
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return v0

    .line 1267
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v3, v0

    sget-object v4, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_1

    move-object v3, v1

    sget-object v4, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_2

    :cond_1
    move-object v3, v0

    sget-object v4, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_3

    move-object v3, v1

    sget-object v4, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_3

    .line 1269
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1270
    :cond_3
    move-object v3, v0

    move-object v2, v3

    .line 1271
    .local v2, "baseClass":Lgnu/bytecode/ClassType;
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_5

    .line 1273
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_4

    .line 1274
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1275
    :cond_4
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 1277
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public final isSubclass(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "cname":Ljava/lang/String;
    move-object v3, v0

    move-object v2, v3

    .line 1255
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1256
    const/4 v3, 0x1

    move v0, v3

    .line 1259
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return v0

    .line 1257
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v2, v3

    .line 1258
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1259
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1321
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 1322
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/ClassType;->flags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lgnu/bytecode/ClassType;->flags:I

    .line 1323
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1327
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1329
    .local v1, "name":Ljava/lang/String;
    sget-object v6, Lgnu/bytecode/ClassType;->mapNameToType:Ljava/util/HashMap;

    move-object v2, v6

    .line 1333
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    move-object v6, v2

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 1335
    move-object v6, v2

    move-object v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/Type;

    move-object v4, v6

    .line 1336
    .local v4, "found":Lgnu/bytecode/Type;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 1337
    move-object v6, v4

    move-object v7, v3

    monitor-exit v7

    move-object v0, v6

    .line 1340
    .end local v0    # "this":Lgnu/bytecode/ClassType;
    :goto_0
    return-object v0

    .line 1338
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    move-object v6, v2

    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1339
    move-object v6, v3

    monitor-exit v6

    .line 1340
    move-object v6, v0

    move-object v0, v6

    goto :goto_0

    .line 1339
    .end local v4    # "found":Lgnu/bytecode/Type;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "attributes":Lgnu/bytecode/Attribute;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setClassfileVersion(I)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move v1, p1

    .local v1, "code":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 37
    return-void
.end method

.method public setClassfileVersion(II)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move v1, p1

    .local v1, "major":I
    move v2, p2

    .local v2, "minor":I
    move-object v3, v0

    move v4, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    const/high16 v5, 0x10000

    mul-int/2addr v4, v5

    move v5, v2

    const v6, 0xffff

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 33
    return-void
.end method

.method public setClassfileVersionJava5()V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    const/high16 v2, 0x310000    # 4.49994E-39f

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 45
    return-void
.end method

.method public setEnclosingMember(Lgnu/bytecode/Member;)V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "member":Lgnu/bytecode/Member;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .line 203
    return-void
.end method

.method public final setInterface(Z)V
    .locals 6

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move v1, p1

    .local v1, "val":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/ClassType;->access_flags:I

    const/16 v4, 0x600

    or-int/lit16 v3, v3, 0x600

    iput v3, v2, Lgnu/bytecode/ClassType;->access_flags:I

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/ClassType;->access_flags:I

    const/16 v4, -0x201

    and-int/lit16 v3, v3, -0x201

    iput v3, v2, Lgnu/bytecode/ClassType;->access_flags:I

    goto :goto_0
.end method

.method public setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "interfaces":[Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setModifiers(I)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 360
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public final setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;
    .locals 12

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "outer":Lgnu/bytecode/ClassType;
    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->flags:I

    const/16 v7, 0x10

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    .line 279
    new-instance v6, Ljava/lang/Error;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setOuterLink called for existing class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 280
    :cond_0
    move-object v6, v0

    const-string/jumbo v7, "this$0"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    move-object v2, v6

    .line 281
    .local v2, "field":Lgnu/bytecode/Field;
    move-object v6, v2

    if-nez v6, :cond_4

    .line 283
    move-object v6, v0

    const-string/jumbo v7, "this$0"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v6

    move-object v2, v6

    .line 284
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/bytecode/ClassType;->flags:I

    const/16 v8, 0x20

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lgnu/bytecode/ClassType;->flags:I

    .line 285
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    move-object v3, v6

    .local v3, "meth":Lgnu/bytecode/Method;
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 287
    const-string/jumbo v6, "<init>"

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 289
    move-object v6, v3

    iget-object v6, v6, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    if-eqz v6, :cond_1

    .line 290
    new-instance v6, Ljava/lang/Error;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setOuterLink called when "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has code"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 291
    :cond_1
    move-object v6, v3

    iget-object v6, v6, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object v4, v6

    .line 292
    .local v4, "arg_types":[Lgnu/bytecode/Type;
    move-object v6, v4

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Lgnu/bytecode/Type;

    move-object v5, v6

    .line 293
    .local v5, "new_types":[Lgnu/bytecode/Type;
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x1

    move-object v10, v4

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 295
    move-object v6, v3

    move-object v7, v5

    iput-object v7, v6, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 296
    move-object v6, v3

    const/4 v7, 0x0

    iput-object v7, v6, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    .line 285
    .end local v4    # "arg_types":[Lgnu/bytecode/Type;
    .end local v5    # "new_types":[Lgnu/bytecode/Type;
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 302
    .end local v3    # "meth":Lgnu/bytecode/Method;
    :cond_3
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0

    .line 300
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :cond_4
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 301
    new-instance v6, Ljava/lang/Error;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inconsistent setOuterLink call for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v3, :cond_0

    .line 380
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/SourceDebugExtAttr;->addFile(Ljava/lang/String;)V

    .line 381
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    iget v3, v3, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 382
    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 386
    move-object v3, v1

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v2, v3

    .line 387
    .local v2, "slash":I
    move v3, v2

    if-ltz v3, :cond_1

    .line 388
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 389
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 390
    goto :goto_0
.end method

.method public setStratum(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "stratum":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-nez v2, :cond_0

    .line 371
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/SourceDebugExtAttr;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    iput-object v3, v2, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 372
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/SourceDebugExtAttr;->addStratum(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public setSuper(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "superClass":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 404
    return-void
.end method

.method public setSuper(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 399
    return-void

    .line 398
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1307
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClassType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1316
    return-void
.end method

.method public writeToArray()[B
    .locals 7

    .prologue
    .line 1176
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x1f4

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v1, v3

    .line 1179
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    .line 1185
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ClassType;
    return-object v0

    .line 1181
    .restart local v0    # "this":Lgnu/bytecode/ClassType;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1183
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/InternalError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeToFile()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    const/16 v4, 0x2e

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedOutputStream;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/io/FileOutputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 1164
    .local v2, "stream":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V

    .line 1165
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1166
    return-void
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "stream":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v5

    .line 1121
    .local v2, "dstr":Ljava/io/DataOutputStream;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->doFixups()V

    .line 1123
    move-object v5, v2

    const v6, -0x35014542    # -8346975.0f

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1124
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1125
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1128
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v5, :cond_1

    .line 1129
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1133
    :goto_0
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->access_flags:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1134
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1135
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1136
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v5, :cond_2

    .line 1137
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1146
    :cond_0
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1147
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    move-object v4, v5

    .local v4, "field":Lgnu/bytecode/Field;
    :goto_1
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 1148
    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/Field;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1147
    move-object v5, v4

    iget-object v5, v5, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    move-object v4, v5

    goto :goto_1

    .line 1131
    .end local v4    # "field":Lgnu/bytecode/Field;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->write(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 1140
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    array-length v5, v5

    move v4, v5

    .line 1141
    .local v4, "interfaces_count":I
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1142
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_2
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 1143
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    move v7, v3

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1142
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1150
    .end local v3    # "i":I
    .local v4, "field":Lgnu/bytecode/Field;
    :cond_3
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1151
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    move-object v4, v5

    .local v4, "method":Lgnu/bytecode/Method;
    :goto_3
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 1152
    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/Method;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1151
    move-object v5, v4

    iget-object v5, v5, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    move-object v4, v5

    goto :goto_3

    .line 1154
    :cond_4
    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 1156
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/bytecode/ClassType;->flags:I

    const/4 v7, 0x3

    or-int/lit8 v6, v6, 0x3

    iput v6, v5, Lgnu/bytecode/ClassType;->flags:I

    .line 1157
    return-void
.end method
