.class public Lgnu/xquery/util/XQException;
.super Ljava/lang/RuntimeException;
.source "XQException.java"


# static fields
.field public static FOER0000_QNAME:Lgnu/mapping/Symbol;


# instance fields
.field public code:Lgnu/mapping/Symbol;

.field public description:Ljava/lang/String;

.field public errorValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-string/jumbo v0, "http://www.w3.org/2005/xqt-errors"

    const-string/jumbo v1, "FOER0000"

    const-string/jumbo v2, "err"

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/XQException;
    move-object v1, p1

    .local v1, "code":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "description":Ljava/lang/String;
    move-object v3, p3

    .local v3, "errorValue":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    .line 15
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    .line 16
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public static error()V
    .locals 6

    .prologue
    .line 24
    new-instance v0, Lgnu/xquery/util/XQException;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public static error(Lgnu/mapping/Symbol;)V
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "error":Lgnu/mapping/Symbol;
    new-instance v1, Lgnu/xquery/util/XQException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "error":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "description":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v3, :cond_1

    .line 35
    :cond_0
    sget-object v2, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    move-object v0, v2

    .line 36
    .end local v0    # "error":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lgnu/xquery/util/XQException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    check-cast v4, Lgnu/mapping/Symbol;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "error":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "description":Ljava/lang/String;
    move-object v2, p2

    .local v2, "errorValue":Ljava/lang/Object;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v3, v4, :cond_1

    .line 42
    :cond_0
    sget-object v3, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    move-object v0, v3

    .line 43
    .end local v0    # "error":Ljava/lang/Object;
    :cond_1
    new-instance v3, Lgnu/xquery/util/XQException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Lgnu/mapping/Symbol;

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/XQException;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v3

    .line 49
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 50
    move-object v3, v1

    const-string/jumbo v4, "XQuery-error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 53
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 55
    move-object v3, v1

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 57
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 59
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 60
    move-object v3, v1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 62
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 63
    move-object v3, v1

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 65
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v3, v4, :cond_2

    .line 67
    move-object v3, v1

    const-string/jumbo v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 68
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 70
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/util/XQException;
    return-object v0

    .line 52
    .restart local v0    # "this":Lgnu/xquery/util/XQException;
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    goto :goto_0
.end method
