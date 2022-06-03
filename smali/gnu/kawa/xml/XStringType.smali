.class public Lgnu/kawa/xml/XStringType;
.super Lgnu/kawa/xml/XDataType;
.source "XStringType.java"


# static fields
.field public static final ENTITYType:Lgnu/kawa/xml/XStringType;

.field public static final IDREFType:Lgnu/kawa/xml/XStringType;

.field public static final IDType:Lgnu/kawa/xml/XStringType;

.field public static final NCNameType:Lgnu/kawa/xml/XStringType;

.field public static final NMTOKENType:Lgnu/kawa/xml/XStringType;

.field public static final NameType:Lgnu/kawa/xml/XStringType;

.field static XStringType:Lgnu/bytecode/ClassType;

.field public static final languageType:Lgnu/kawa/xml/XStringType;

.field public static final normalizedStringType:Lgnu/kawa/xml/XStringType;

.field public static final tokenType:Lgnu/kawa/xml/XStringType;


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 18
    const-string/jumbo v0, "gnu.kawa.xml.XString"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "normalizedString"

    sget-object v3, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    .line 35
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "token"

    sget-object v3, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    .line 39
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "language"

    sget-object v3, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x29

    const-string/jumbo v5, "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*"

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    .line 43
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "NMTOKEN"

    sget-object v3, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x2a

    const-string/jumbo v5, "\\c+"

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    .line 47
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "Name"

    sget-object v3, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    .line 51
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "NCName"

    sget-object v3, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    .line 55
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "ID"

    sget-object v3, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    .line 59
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "IDREF"

    sget-object v3, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    .line 63
    new-instance v0, Lgnu/kawa/xml/XStringType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "ENTITY"

    sget-object v3, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XStringType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "base":Lgnu/kawa/xml/XDataType;
    move v3, p3

    .local v3, "typeCode":I
    move-object v4, p4

    .local v4, "pattern":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 24
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/xml/XStringType;->baseType:Lgnu/kawa/xml/XDataType;

    .line 26
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 27
    move-object v5, v0

    move-object v6, v4

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    .line 29
    :cond_0
    return-void
.end method

.method public static makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/XString;

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XStringType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/XString;

    if-eqz v3, :cond_0

    .line 142
    move-object v3, v1

    check-cast v3, Lgnu/kawa/xml/XString;

    move-object v2, v3

    .line 143
    .local v2, "xvalue":Lgnu/kawa/xml/XString;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object v3

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 144
    move-object v3, v2

    move-object v0, v3

    .line 146
    .end local v0    # "this":Lgnu/kawa/xml/XStringType;
    .end local v2    # "xvalue":Lgnu/kawa/xml/XString;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/XStringType;
    :cond_0
    move-object v3, v0

    sget-object v4, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XStringType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/XString;

    if-nez v3, :cond_0

    .line 70
    const/4 v3, 0x0

    move v0, v3

    .line 82
    .end local v0    # "this":Lgnu/kawa/xml/XStringType;
    :goto_0
    return v0

    .line 75
    .restart local v0    # "this":Lgnu/kawa/xml/XStringType;
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/kawa/xml/XString;

    invoke-virtual {v3}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object v3

    move-object v2, v3

    .line 76
    .local v2, "objType":Lgnu/kawa/xml/XDataType;
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 78
    move-object v3, v2

    move-object v4, v0

    if-ne v3, v4, :cond_1

    .line 79
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 80
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/xml/XDataType;->baseType:Lgnu/kawa/xml/XDataType;

    move-object v2, v3

    goto :goto_1

    .line 82
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XStringType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/XStringType;->typeCode:I

    packed-switch v4, :pswitch_data_0

    .line 120
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 126
    .local v2, "status":Z
    :goto_1
    move v4, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/XStringType;
    return-object v0

    .line 103
    .end local v2    # "status":Z
    .restart local v0    # "this":Lgnu/kawa/xml/XStringType;
    :pswitch_1
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/XStringType;->typeCode:I

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_3
    move v3, v4

    .line 104
    .local v3, "collapse":Z
    move-object v4, v1

    move-object v5, v1

    move v6, v3

    invoke-static {v5, v6}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_4
    move v2, v4

    .line 105
    .restart local v2    # "status":Z
    goto :goto_1

    .line 103
    .end local v2    # "status":Z
    .end local v3    # "collapse":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    .line 104
    .restart local v3    # "collapse":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_4

    .line 107
    .end local v3    # "collapse":Z
    :pswitch_2
    move-object v4, v1

    invoke-static {v4}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result v4

    move v2, v4

    .line 108
    .restart local v2    # "status":Z
    goto :goto_1

    .line 113
    .end local v2    # "status":Z
    :pswitch_3
    move-object v4, v1

    invoke-static {v4}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v4

    move v2, v4

    .line 114
    .restart local v2    # "status":Z
    goto :goto_1

    .line 116
    .end local v2    # "status":Z
    :pswitch_4
    move-object v4, v1

    invoke-static {v4}, Lgnu/xml/XName;->isNmToken(Ljava/lang/String;)Z

    move-result v4

    move v2, v4

    .line 117
    .restart local v2    # "status":Z
    goto :goto_1

    .line 120
    .end local v2    # "status":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 126
    .restart local v2    # "status":Z
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not a valid XML "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/xml/XStringType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XStringType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v0

    sget-object v5, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v3, v4}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 132
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XStringType;->matches(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 133
    .local v2, "err":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 134
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot cast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xml/XStringType;->name:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v2    # "err":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 135
    .restart local v2    # "err":Ljava/lang/String;
    :cond_1
    new-instance v3, Lgnu/kawa/xml/XString;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lgnu/kawa/xml/XString;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XStringType;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/XStringType;
    return-object v0
.end method
