.class public Lgnu/bytecode/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"


# static fields
.field public static final CLASS:B = 0x7t

.field public static final DOUBLE:B = 0x6t

.field public static final FIELDREF:B = 0x9t

.field public static final FLOAT:B = 0x4t

.field public static final INTEGER:B = 0x3t

.field public static final INTERFACE_METHODREF:B = 0xbt

.field public static final LONG:B = 0x5t

.field public static final METHODREF:B = 0xat

.field public static final NAME_AND_TYPE:B = 0xct

.field public static final STRING:B = 0x8t

.field public static final UTF8:B = 0x1t


# instance fields
.field count:I

.field hashTab:[Lgnu/bytecode/CpoolEntry;

.field locked:Z

.field pool:[Lgnu/bytecode/CpoolEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataInputStream;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 345
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lgnu/bytecode/ConstantPool;->count:I

    .line 346
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [Lgnu/bytecode/CpoolEntry;

    iput-object v8, v7, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 347
    const/4 v7, 0x1

    move v2, v7

    .local v2, "i":I
    :goto_0
    move v7, v2

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v7, v8, :cond_0

    .line 349
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    move v3, v7

    .line 350
    .local v3, "tag":B
    move-object v7, v0

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v7

    move-object v4, v7

    .line 351
    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 347
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :pswitch_1
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/CpoolUtf8;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 355
    goto :goto_1

    .line 358
    :pswitch_2
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/CpoolValue1;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v7, Lgnu/bytecode/CpoolValue1;->value:I

    .line 359
    goto :goto_1

    .line 362
    :pswitch_3
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/CpoolValue2;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lgnu/bytecode/CpoolValue2;->value:J

    .line 363
    add-int/lit8 v2, v2, 0x1

    .line 364
    goto :goto_1

    .line 366
    :pswitch_4
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/CpoolClass;

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/CpoolUtf8;

    iput-object v8, v7, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    .line 368
    goto :goto_1

    .line 370
    :pswitch_5
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/CpoolString;

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/CpoolUtf8;

    iput-object v8, v7, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    .line 372
    goto :goto_1

    .line 376
    :pswitch_6
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/CpoolRef;

    move-object v5, v7

    .line 377
    .local v5, "ref":Lgnu/bytecode/CpoolRef;
    move-object v7, v5

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual {v8, v9}, Lgnu/bytecode/ConstantPool;->getForcedClass(I)Lgnu/bytecode/CpoolClass;

    move-result-object v8

    iput-object v8, v7, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    .line 378
    move-object v7, v5

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/CpoolNameAndType;

    iput-object v8, v7, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    .line 380
    goto :goto_1

    .line 382
    .end local v5    # "ref":Lgnu/bytecode/CpoolRef;
    :pswitch_7
    move-object v7, v4

    check-cast v7, Lgnu/bytecode/CpoolNameAndType;

    move-object v6, v7

    .line 383
    .local v6, "ntyp":Lgnu/bytecode/CpoolNameAndType;
    move-object v7, v6

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/CpoolUtf8;

    iput-object v8, v7, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    .line 384
    move-object v7, v6

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/CpoolUtf8;

    iput-object v8, v7, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    goto/16 :goto_1

    .line 388
    .end local v3    # "tag":B
    .end local v4    # "entry":Lgnu/bytecode/CpoolEntry;
    .end local v6    # "ntyp":Lgnu/bytecode/CpoolNameAndType;
    :cond_0
    return-void

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolClass;
    .locals 12

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "name":Lgnu/bytecode/CpoolUtf8;
    move-object v6, v1

    invoke-static {v6}, Lgnu/bytecode/CpoolClass;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v6

    move v2, v6

    .line 112
    .local v2, "h":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v6, :cond_0

    .line 113
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 114
    :cond_0
    move v6, v2

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v7, v7

    rem-int/2addr v6, v7

    move v3, v6

    .line 115
    .local v3, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 117
    move v6, v2

    move-object v7, v4

    iget v7, v7, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v6, v7, :cond_1

    move-object v6, v4

    instance-of v6, v6, Lgnu/bytecode/CpoolClass;

    if-eqz v6, :cond_1

    .line 119
    move-object v6, v4

    check-cast v6, Lgnu/bytecode/CpoolClass;

    move-object v5, v6

    .line 120
    .local v5, "ent":Lgnu/bytecode/CpoolClass;
    move-object v6, v5

    iget-object v6, v6, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 121
    move-object v6, v5

    move-object v0, v6

    .line 124
    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    .end local v5    # "ent":Lgnu/bytecode/CpoolClass;
    :goto_1
    return-object v0

    .line 115
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    move-object v4, v6

    goto :goto_0

    .line 124
    :cond_2
    new-instance v6, Lgnu/bytecode/CpoolClass;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lgnu/bytecode/CpoolClass;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V

    move-object v0, v6

    goto :goto_1
.end method

.method public addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "otype":Lgnu/bytecode/ObjectType;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolClass;

    move-result-object v3

    move-object v2, v3

    .line 103
    .local v2, "entry":Lgnu/bytecode/CpoolClass;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    .line 104
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public addDouble(D)Lgnu/bytecode/CpoolValue2;
    .locals 9

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Lgnu/bytecode/ConstantPool;
    move-wide v2, p1

    .local v2, "val":D
    move-object v4, v1

    const/4 v5, 0x6

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lgnu/bytecode/ConstantPool;->addValue2(IJ)Lgnu/bytecode/CpoolValue2;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Lgnu/bytecode/ConstantPool;
    return-object v1
.end method

.method public addFieldRef(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolRef;
    .locals 9

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v5

    move-object v2, v5

    .line 284
    .local v2, "clas":Lgnu/bytecode/CpoolClass;
    const/16 v5, 0x9

    move v3, v5

    .line 285
    .local v3, "tag":I
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v5

    move-object v4, v5

    .line 286
    .local v4, "nameType":Lgnu/bytecode/CpoolNameAndType;
    move-object v5, v0

    move v6, v3

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/bytecode/ConstantPool;->addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public addFloat(F)Lgnu/bytecode/CpoolValue1;
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move v1, p1

    .local v1, "val":F
    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ConstantPool;->addValue1(II)Lgnu/bytecode/CpoolValue1;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public addInt(I)Lgnu/bytecode/CpoolValue1;
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move v1, p1

    .local v1, "val":I
    move-object v2, v0

    const/4 v3, 0x3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ConstantPool;->addValue1(II)Lgnu/bytecode/CpoolValue1;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public addLong(J)Lgnu/bytecode/CpoolValue2;
    .locals 9

    .prologue
    .line 174
    move-object v1, p0

    .local v1, "this":Lgnu/bytecode/ConstantPool;
    move-wide v2, p1

    .local v2, "val":J
    move-object v4, v1

    const/4 v5, 0x5

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/bytecode/ConstantPool;->addValue2(IJ)Lgnu/bytecode/CpoolValue2;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Lgnu/bytecode/ConstantPool;
    return-object v1
.end method

.method public addMethodRef(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolRef;
    .locals 9

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v5

    move-object v2, v5

    .line 273
    .local v2, "clas":Lgnu/bytecode/CpoolClass;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v5

    const/16 v6, 0x200

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    .line 274
    const/16 v5, 0xa

    move v3, v5

    .line 277
    .local v3, "tag":I
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v5

    move-object v4, v5

    .line 278
    .local v4, "nameType":Lgnu/bytecode/CpoolNameAndType;
    move-object v5, v0

    move v6, v3

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/bytecode/ConstantPool;->addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0

    .line 276
    .end local v3    # "tag":I
    .end local v4    # "nameType":Lgnu/bytecode/CpoolNameAndType;
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_0
    const/16 v5, 0xb

    move v3, v5

    .restart local v3    # "tag":I
    goto :goto_0
.end method

.method public addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;
    .locals 13

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "name":Lgnu/bytecode/CpoolUtf8;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/CpoolUtf8;
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lgnu/bytecode/CpoolNameAndType;->hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I

    move-result v6

    move v3, v6

    .line 232
    .local v3, "h":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v6, :cond_0

    .line 233
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 234
    :cond_0
    move v6, v3

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v7, v7

    rem-int/2addr v6, v7

    move v4, v6

    .line 235
    .local v4, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .local v5, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 237
    move v6, v3

    move-object v7, v5

    iget v7, v7, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v6, v7, :cond_1

    move-object v6, v5

    instance-of v6, v6, Lgnu/bytecode/CpoolNameAndType;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lgnu/bytecode/CpoolNameAndType;

    iget-object v6, v6, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    move-object v6, v5

    check-cast v6, Lgnu/bytecode/CpoolNameAndType;

    iget-object v6, v6, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    move-object v7, v2

    if-ne v6, v7, :cond_1

    .line 241
    move-object v6, v5

    check-cast v6, Lgnu/bytecode/CpoolNameAndType;

    move-object v0, v6

    .line 243
    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    :goto_1
    return-object v0

    .line 235
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    move-object v5, v6

    goto :goto_0

    .line 243
    :cond_2
    new-instance v6, Lgnu/bytecode/CpoolNameAndType;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move v9, v3

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/bytecode/CpoolNameAndType;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)V

    move-object v0, v6

    goto :goto_1
.end method

.method public addNameAndType(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolNameAndType;
    .locals 7

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v4

    move-object v2, v4

    .line 222
    .local v2, "name":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v4

    move-object v3, v4

    .line 223
    .local v3, "type":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;
    .locals 7

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v4

    move-object v2, v4

    .line 215
    .local v2, "name":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v4

    move-object v3, v4

    .line 216
    .local v3, "type":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;
    .locals 16

    .prologue
    .line 249
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move/from16 v1, p1

    .local v1, "tag":I
    move-object/from16 v2, p2

    .local v2, "clas":Lgnu/bytecode/CpoolClass;
    move-object/from16 v3, p3

    .local v3, "nameAndType":Lgnu/bytecode/CpoolNameAndType;
    move-object v8, v2

    move-object v9, v3

    invoke-static {v8, v9}, Lgnu/bytecode/CpoolRef;->hashCode(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)I

    move-result v8

    move v4, v8

    .line 252
    .local v4, "h":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v8, :cond_0

    .line 253
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 254
    :cond_0
    move v8, v4

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v9, v9

    rem-int/2addr v8, v9

    move v5, v8

    .line 255
    .local v5, "index":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .local v6, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_2

    .line 257
    move v8, v4

    move-object v9, v6

    iget v9, v9, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v8, v9, :cond_1

    move-object v8, v6

    instance-of v8, v8, Lgnu/bytecode/CpoolRef;

    if-eqz v8, :cond_1

    .line 259
    move-object v8, v6

    check-cast v8, Lgnu/bytecode/CpoolRef;

    move-object v7, v8

    .line 260
    .local v7, "ref":Lgnu/bytecode/CpoolRef;
    move-object v8, v7

    iget v8, v8, Lgnu/bytecode/CpoolRef;->tag:I

    move v9, v1

    if-ne v8, v9, :cond_1

    move-object v8, v7

    iget-object v8, v8, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    move-object v9, v2

    if-ne v8, v9, :cond_1

    move-object v8, v7

    iget-object v8, v8, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    move-object v9, v3

    if-ne v8, v9, :cond_1

    .line 263
    move-object v8, v7

    move-object v0, v8

    .line 266
    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    .end local v7    # "ref":Lgnu/bytecode/CpoolRef;
    :goto_1
    return-object v0

    .line 255
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_1
    move-object v8, v6

    iget-object v8, v8, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    move-object v6, v8

    goto :goto_0

    .line 266
    :cond_2
    new-instance v8, Lgnu/bytecode/CpoolRef;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    move v11, v4

    move v12, v1

    move-object v13, v2

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Lgnu/bytecode/CpoolRef;-><init>(Lgnu/bytecode/ConstantPool;IILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)V

    move-object v0, v8

    goto :goto_1
.end method

.method public addString(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolString;
    .locals 12

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "str":Lgnu/bytecode/CpoolUtf8;
    move-object v6, v1

    invoke-static {v6}, Lgnu/bytecode/CpoolString;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v6

    move v2, v6

    .line 197
    .local v2, "h":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v6, :cond_0

    .line 198
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 199
    :cond_0
    move v6, v2

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v7, v7

    rem-int/2addr v6, v7

    move v3, v6

    .line 200
    .local v3, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 202
    move v6, v2

    move-object v7, v4

    iget v7, v7, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v6, v7, :cond_1

    move-object v6, v4

    instance-of v6, v6, Lgnu/bytecode/CpoolString;

    if-eqz v6, :cond_1

    .line 204
    move-object v6, v4

    check-cast v6, Lgnu/bytecode/CpoolString;

    move-object v5, v6

    .line 205
    .local v5, "ent":Lgnu/bytecode/CpoolString;
    move-object v6, v5

    iget-object v6, v6, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 206
    move-object v6, v5

    move-object v0, v6

    .line 209
    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    .end local v5    # "ent":Lgnu/bytecode/CpoolString;
    :goto_1
    return-object v0

    .line 200
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    move-object v4, v6

    goto :goto_0

    .line 209
    :cond_2
    new-instance v6, Lgnu/bytecode/CpoolString;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lgnu/bytecode/CpoolString;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V

    move-object v0, v6

    goto :goto_1
.end method

.method public final addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ConstantPool;->addString(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolString;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;
    .locals 12

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 79
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    move v2, v6

    .line 82
    .local v2, "h":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v6, :cond_0

    .line 83
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 85
    :cond_0
    move v6, v2

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v7, v7

    rem-int/2addr v6, v7

    move v3, v6

    .line 86
    .local v3, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 88
    move v6, v2

    move-object v7, v4

    iget v7, v7, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v6, v7, :cond_1

    move-object v6, v4

    instance-of v6, v6, Lgnu/bytecode/CpoolUtf8;

    if-eqz v6, :cond_1

    .line 90
    move-object v6, v4

    check-cast v6, Lgnu/bytecode/CpoolUtf8;

    move-object v5, v6

    .line 91
    .local v5, "utf":Lgnu/bytecode/CpoolUtf8;
    move-object v6, v5

    iget-object v6, v6, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 92
    move-object v6, v5

    move-object v0, v6

    .line 97
    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    .end local v5    # "utf":Lgnu/bytecode/CpoolUtf8;
    :goto_1
    return-object v0

    .line 86
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    move-object v4, v6

    goto :goto_0

    .line 95
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/bytecode/ConstantPool;->locked:Z

    if-eqz v6, :cond_3

    .line 96
    new-instance v6, Ljava/lang/Error;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "adding new Utf8 entry to locked contant pool: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    :cond_3
    new-instance v6, Lgnu/bytecode/CpoolUtf8;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lgnu/bytecode/CpoolUtf8;-><init>(Lgnu/bytecode/ConstantPool;ILjava/lang/String;)V

    move-object v0, v6

    goto :goto_1
.end method

.method addValue1(II)Lgnu/bytecode/CpoolValue1;
    .locals 14

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move v1, p1

    .local v1, "tag":I
    move/from16 v2, p2

    .local v2, "val":I
    move v7, v2

    invoke-static {v7}, Lgnu/bytecode/CpoolValue1;->hashCode(I)I

    move-result v7

    move v3, v7

    .line 132
    .local v3, "h":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v7, :cond_0

    .line 133
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 134
    :cond_0
    move v7, v3

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v8, v8

    rem-int/2addr v7, v8

    move v4, v7

    .line 135
    .local v4, "index":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .local v5, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_0
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 137
    move v7, v3

    move-object v8, v5

    iget v8, v8, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v7, v8, :cond_1

    move-object v7, v5

    instance-of v7, v7, Lgnu/bytecode/CpoolValue1;

    if-eqz v7, :cond_1

    .line 139
    move-object v7, v5

    check-cast v7, Lgnu/bytecode/CpoolValue1;

    move-object v6, v7

    .line 140
    .local v6, "ent":Lgnu/bytecode/CpoolValue1;
    move-object v7, v6

    iget v7, v7, Lgnu/bytecode/CpoolValue1;->tag:I

    move v8, v1

    if-ne v7, v8, :cond_1

    move-object v7, v6

    iget v7, v7, Lgnu/bytecode/CpoolValue1;->value:I

    move v8, v2

    if-ne v7, v8, :cond_1

    .line 141
    move-object v7, v6

    move-object v0, v7

    .line 144
    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    .end local v6    # "ent":Lgnu/bytecode/CpoolValue1;
    :goto_1
    return-object v0

    .line 135
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_1
    move-object v7, v5

    iget-object v7, v7, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    move-object v5, v7

    goto :goto_0

    .line 144
    :cond_2
    new-instance v7, Lgnu/bytecode/CpoolValue1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move v10, v1

    move v11, v3

    move v12, v2

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/bytecode/CpoolValue1;-><init>(Lgnu/bytecode/ConstantPool;III)V

    move-object v0, v7

    goto :goto_1
.end method

.method addValue2(IJ)Lgnu/bytecode/CpoolValue2;
    .locals 16

    .prologue
    .line 149
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move/from16 v1, p1

    .local v1, "tag":I
    move-wide/from16 v2, p2

    .local v2, "val":J
    move-wide v8, v2

    invoke-static {v8, v9}, Lgnu/bytecode/CpoolValue2;->hashCode(J)I

    move-result v8

    move v4, v8

    .line 152
    .local v4, "h":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v8, :cond_0

    .line 153
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 154
    :cond_0
    move v8, v4

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v9, v9

    rem-int/2addr v8, v9

    move v5, v8

    .line 155
    .local v5, "index":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .local v6, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_2

    .line 157
    move v8, v4

    move-object v9, v6

    iget v9, v9, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v8, v9, :cond_1

    move-object v8, v6

    instance-of v8, v8, Lgnu/bytecode/CpoolValue2;

    if-eqz v8, :cond_1

    .line 159
    move-object v8, v6

    check-cast v8, Lgnu/bytecode/CpoolValue2;

    move-object v7, v8

    .line 160
    .local v7, "ent":Lgnu/bytecode/CpoolValue2;
    move-object v8, v7

    iget v8, v8, Lgnu/bytecode/CpoolValue2;->tag:I

    move v9, v1

    if-ne v8, v9, :cond_1

    move-object v8, v7

    iget-wide v8, v8, Lgnu/bytecode/CpoolValue2;->value:J

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 161
    move-object v8, v7

    move-object v0, v8

    .line 164
    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    .end local v7    # "ent":Lgnu/bytecode/CpoolValue2;
    :goto_1
    return-object v0

    .line 155
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :cond_1
    move-object v8, v6

    iget-object v8, v8, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    move-object v6, v8

    goto :goto_0

    .line 164
    :cond_2
    new-instance v8, Lgnu/bytecode/CpoolValue2;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    move v11, v1

    move v12, v4

    move-wide v13, v2

    invoke-direct/range {v9 .. v14}, Lgnu/bytecode/CpoolValue2;-><init>(Lgnu/bytecode/ConstantPool;IIJ)V

    move-object v0, v8

    goto :goto_1
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ConstantPool;->count:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return v0
.end method

.method getForced(II)Lgnu/bytecode/CpoolEntry;
    .locals 9

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "tag":I
    move v4, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    move v1, v4

    .line 308
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 309
    .local v3, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 311
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/bytecode/ConstantPool;->locked:Z

    if-eqz v4, :cond_0

    .line 312
    new-instance v4, Ljava/lang/Error;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "adding new entry to locked contant pool"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_0
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v5, v1

    move-object v6, v3

    aput-object v6, v4, v5

    .line 328
    move-object v4, v3

    move v5, v1

    iput v5, v4, Lgnu/bytecode/CpoolEntry;->index:I

    .line 332
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0

    .line 315
    .restart local v0    # "this":Lgnu/bytecode/ConstantPool;
    :pswitch_1
    new-instance v4, Lgnu/bytecode/CpoolUtf8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lgnu/bytecode/CpoolUtf8;-><init>()V

    move-object v3, v4

    goto :goto_0

    .line 317
    :pswitch_2
    new-instance v4, Lgnu/bytecode/CpoolValue1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v2

    invoke-direct {v5, v6}, Lgnu/bytecode/CpoolValue1;-><init>(I)V

    move-object v3, v4

    goto :goto_0

    .line 319
    :pswitch_3
    new-instance v4, Lgnu/bytecode/CpoolValue2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v2

    invoke-direct {v5, v6}, Lgnu/bytecode/CpoolValue2;-><init>(I)V

    move-object v3, v4

    goto :goto_0

    .line 320
    :pswitch_4
    new-instance v4, Lgnu/bytecode/CpoolClass;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lgnu/bytecode/CpoolClass;-><init>()V

    move-object v3, v4

    goto :goto_0

    .line 321
    :pswitch_5
    new-instance v4, Lgnu/bytecode/CpoolString;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lgnu/bytecode/CpoolString;-><init>()V

    move-object v3, v4

    goto :goto_0

    .line 324
    :pswitch_6
    new-instance v4, Lgnu/bytecode/CpoolRef;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v2

    invoke-direct {v5, v6}, Lgnu/bytecode/CpoolRef;-><init>(I)V

    move-object v3, v4

    goto :goto_0

    .line 325
    :pswitch_7
    new-instance v4, Lgnu/bytecode/CpoolNameAndType;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lgnu/bytecode/CpoolNameAndType;-><init>()V

    move-object v3, v4

    goto :goto_0

    .line 330
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v4

    move v5, v2

    if-eq v4, v5, :cond_1

    .line 331
    new-instance v4, Ljava/lang/ClassFormatError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "conflicting constant pool tags at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method getForcedClass(I)Lgnu/bytecode/CpoolClass;
    .locals 5

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolClass;

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method public final getPoolEntry(I)Lgnu/bytecode/CpoolEntry;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ConstantPool;
    return-object v0
.end method

.method rehash()V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/ConstantPool;->count:I

    if-lez v3, :cond_1

    .line 55
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v3

    move v1, v3

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-ltz v3, :cond_1

    .line 57
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 59
    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 60
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/CpoolEntry;->hashCode()I

    move-result v3

    .line 61
    :cond_0
    goto :goto_0

    .line 64
    .end local v1    # "i":I
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    const/16 v4, 0x65

    :goto_1
    new-array v4, v4, [Lgnu/bytecode/CpoolEntry;

    iput-object v4, v3, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    .line 65
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v3, :cond_4

    .line 67
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v3

    move v1, v3

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    if-ltz v3, :cond_4

    .line 69
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 70
    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 71
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    .line 72
    :cond_2
    goto :goto_2

    .line 64
    .end local v1    # "i":I
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_3
    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/ConstantPool;->count:I

    mul-int/2addr v4, v5

    goto :goto_1

    .line 74
    :cond_4
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ConstantPool;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 292
    const/4 v4, 0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v4, v5, :cond_1

    .line 294
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 295
    .local v3, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 296
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CpoolEntry;->write(Ljava/io/DataOutputStream;)V

    .line 292
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v3    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lgnu/bytecode/ConstantPool;->locked:Z

    .line 299
    return-void
.end method
