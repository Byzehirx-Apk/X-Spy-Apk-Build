.class Lgnu/kawa/util/FileInfo;
.super Ljava/lang/Object;
.source "FixupHtmlToc.java"


# static fields
.field static final childPat:Ljava/util/regex/Pattern;

.field static fileMap:Ljava/util/Hashtable;

.field static final linkPat:Ljava/util/regex/Pattern;

.field static final parentPat:Ljava/util/regex/Pattern;


# instance fields
.field beforeNavbarText:Ljava/lang/StringBuffer;

.field bout:Ljava/io/ByteArrayOutputStream;

.field childLinkText:[Ljava/lang/String;

.field cout:Lgnu/mapping/OutPort;

.field file:Ljava/io/File;

.field fin:Ljava/io/FileInputStream;

.field in:Lgnu/mapping/InPort;

.field nchildren:I

.field newNavbarText:Ljava/lang/StringBuffer;

.field oldNavbarText:Ljava/lang/StringBuffer;

.field parent:Lgnu/kawa/util/FileInfo;

.field parentName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field scanned:Z

.field writeNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/util/Hashtable;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    .line 93
    const-string/jumbo v0, "<a .*</a>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    .line 94
    const-string/jumbo v0, "<ul[^>]* parent=[\'\"]([^\'\"]*)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    .line 96
    const-string/jumbo v0, " href=[\'\"]([^\'\"]*)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/FileInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 83
    .local v1, "abs":Ljava/lang/String;
    sget-object v3, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/util/FileInfo;

    move-object v2, v3

    .line 84
    .local v2, "info":Lgnu/kawa/util/FileInfo;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 86
    new-instance v3, Lgnu/kawa/util/FileInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/kawa/util/FileInfo;-><init>()V

    move-object v2, v3

    .line 87
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    .line 88
    sget-object v3, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 90
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "file":Ljava/io/File;
    return-object v0
.end method


# virtual methods
.method public scan()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/FileInfo;
    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/util/FileInfo;->scanned:Z

    if-eqz v8, :cond_0

    .line 101
    .line 174
    :goto_0
    return-void

    .line 102
    :cond_0
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lgnu/kawa/util/FileInfo;->scanned:Z

    .line 103
    move-object v8, v0

    new-instance v9, Ljava/io/FileInputStream;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    .line 104
    move-object v8, v0

    new-instance v9, Lgnu/mapping/InPort;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/io/BufferedInputStream;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    .line 105
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    .line 106
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    .line 107
    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v8, :cond_1

    .line 109
    move-object v8, v0

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    .line 110
    move-object v8, v0

    new-instance v9, Lgnu/mapping/OutPort;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10, v11}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    .line 112
    :cond_1
    const/4 v8, 0x0

    move v1, v8

    .line 113
    .local v1, "lineno":I
    const/4 v8, 0x0

    move v2, v8

    .line 114
    .local v2, "inNavbar":Z
    const/4 v8, 0x0

    move v3, v8

    .line 115
    .local v3, "inChildList":Z
    new-instance v8, Ljava/util/Vector;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move-object v4, v8

    .line 118
    .local v4, "chvec":Ljava/util/Vector;
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v8}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 119
    .local v5, "line":Ljava/lang/String;
    move-object v8, v5

    if-nez v8, :cond_4

    .line 120
    .line 161
    :goto_2
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move-object v5, v8

    .line 162
    .local v5, "charr":[Ljava/lang/String;
    move-object v8, v0

    move-object v9, v5

    array-length v9, v9

    iput v9, v8, Lgnu/kawa/util/FileInfo;->nchildren:I

    .line 163
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 164
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    .line 165
    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-nez v8, :cond_2

    .line 166
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v8}, Lgnu/mapping/InPort;->close()V

    .line 167
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 169
    new-instance v8, Ljava/io/File;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    move-object v6, v8

    .line 170
    .local v6, "parentFile":Ljava/io/File;
    move-object v8, v6

    invoke-static {v8}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v8

    move-object v7, v8

    .line 171
    .local v7, "parentInfo":Lgnu/kawa/util/FileInfo;
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/kawa/util/FileInfo;->scan()V

    .line 172
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    .line 174
    .end local v6    # "parentFile":Ljava/io/File;
    .end local v7    # "parentInfo":Lgnu/kawa/util/FileInfo;
    :cond_3
    goto/16 :goto_0

    .line 121
    .local v5, "line":Ljava/lang/String;
    :cond_4
    move v8, v2

    if-eqz v8, :cond_b

    .line 123
    move-object v8, v5

    const-string/jumbo v9, "<!--end-generated-navbar-->"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_5

    .line 125
    const/4 v8, 0x0

    move v2, v8

    .line 126
    goto :goto_2

    .line 128
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 129
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 130
    move v8, v3

    if-eqz v8, :cond_6

    .line 132
    move-object v8, v5

    const-string/jumbo v9, "<!--end-children-toc-->"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_9

    .line 133
    const/4 v8, 0x0

    move v3, v8

    .line 148
    :cond_6
    :goto_3
    move-object v8, v5

    const-string/jumbo v9, "<!--start-children-toc-->"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_7

    .line 149
    const/4 v8, 0x1

    move v3, v8

    .line 158
    :cond_7
    :goto_4
    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v8, :cond_8

    move v8, v2

    if-nez v8, :cond_8

    .line 159
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 160
    :cond_8
    goto/16 :goto_1

    .line 136
    :cond_9
    sget-object v8, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move-object v6, v8

    .line 137
    .local v6, "childMatcher":Ljava/util/regex/Matcher;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 139
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 141
    :cond_a
    sget-object v8, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move-object v7, v8

    .line 142
    .local v7, "parentMatcher":Ljava/util/regex/Matcher;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 144
    move-object v8, v0

    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    goto :goto_3

    .line 153
    .end local v6    # "childMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "parentMatcher":Ljava/util/regex/Matcher;
    :cond_b
    move-object v8, v5

    const-string/jumbo v9, "<!--start-generated-navbar-->"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_7

    .line 155
    const/4 v8, 0x1

    move v2, v8

    goto :goto_4
.end method

.method public write()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/FileInfo;
    const/4 v6, 0x0

    move v1, v6

    .line 236
    .local v1, "level":I
    move-object v6, v0

    move-object v2, v6

    .line 237
    .local v2, "current":Lgnu/kawa/util/FileInfo;
    :goto_0
    move-object v6, v2

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    if-eqz v6, :cond_0

    .line 239
    move-object v6, v2

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    move-object v2, v6

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string/jumbo v7, "<!--start-generated-navbar-->"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 243
    move-object v6, v0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    .line 244
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 245
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string/jumbo v7, "<!--end-generated-navbar-->"

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 248
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v6}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 249
    .local v3, "line":Ljava/lang/String;
    move-object v6, v3

    if-nez v6, :cond_1

    .line 250
    .line 253
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v6

    .line 254
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v6}, Lgnu/mapping/InPort;->close()V

    .line 255
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 256
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fixup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - no change"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    :goto_2
    return-void

    .line 251
    .local v3, "line":Ljava/lang/String;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 252
    goto :goto_1

    .line 259
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v6, Ljava/io/FileOutputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 260
    .local v4, "outs":Ljava/io/FileOutputStream;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object v5, v6

    .line 261
    .local v5, "bbuf":[B
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 263
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fixup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - updated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public writeLinks(ILjava/lang/StringBuffer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/util/FileInfo;
    move/from16 v3, p1

    .local v3, "uplevel":I
    move-object/from16 v4, p2

    .local v4, "out":Ljava/lang/StringBuffer;
    move-object/from16 v17, v2

    move-object/from16 v5, v17

    .line 180
    .local v5, "current":Lgnu/kawa/util/FileInfo;
    const/16 v17, 0x0

    move-object/from16 v6, v17

    .line 181
    .local v6, "thischild":Lgnu/kawa/util/FileInfo;
    move/from16 v17, v3

    move/from16 v7, v17

    .local v7, "i":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move/from16 v17, v7

    if-ltz v17, :cond_0

    .line 183
    move-object/from16 v17, v5

    move-object/from16 v6, v17

    .line 184
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    goto :goto_0

    .line 186
    :cond_0
    move/from16 v17, v3

    if-nez v17, :cond_1

    .line 187
    move-object/from16 v17, v4

    const-string/jumbo v18, "<!--start-children-toc-->\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 188
    :cond_1
    move/from16 v17, v3

    if-nez v17, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 190
    move-object/from16 v17, v4

    const-string/jumbo v18, "<ul parent=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 191
    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 192
    move-object/from16 v17, v4

    const-string/jumbo v18, "\">\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 196
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v17

    move-object/from16 v7, v17

    .line 197
    .local v7, "thisURI":Ljava/net/URI;
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v17

    move-object/from16 v8, v17

    .line 198
    .local v8, "currentURI":Ljava/net/URI;
    const/16 v17, 0x0

    move/from16 v9, v17

    .local v9, "i":I
    :goto_2
    move/from16 v17, v9

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/util/FileInfo;->nchildren:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 200
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, v9

    aget-object v17, v17, v18

    move-object/from16 v10, v17

    .line 201
    .local v10, "linkText":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 203
    .local v11, "ancestor":Z
    move/from16 v17, v3

    if-lez v17, :cond_5

    .line 205
    sget-object v17, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    move-object/from16 v12, v17

    .line 206
    .local v12, "linkMatcher":Ljava/util/regex/Matcher;
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    .line 207
    move-object/from16 v17, v12

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 208
    .local v13, "hrefText":Ljava/lang/String;
    move-object/from16 v17, v8

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v17

    move-object/from16 v14, v17

    .line 209
    .local v14, "linkURI":Ljava/net/URI;
    move-object/from16 v17, v12

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " href=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 210
    move-object/from16 v17, v13

    const/16 v18, 0x23

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    move/from16 v15, v17

    .line 211
    .local v15, "hash":I
    move/from16 v17, v15

    if-ltz v17, :cond_2

    .line 212
    move-object/from16 v17, v13

    const/16 v18, 0x0

    move/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 213
    :cond_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v8

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static/range {v17 .. v17}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v17

    move-object/from16 v16, v17

    .line 214
    .local v16, "curchild":Lgnu/kawa/util/FileInfo;
    move-object/from16 v17, v16

    move-object/from16 v18, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_3
    move/from16 v11, v17

    .line 216
    move/from16 v17, v11

    if-nez v17, :cond_5

    move/from16 v17, v3

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 217
    .line 198
    .end local v12    # "linkMatcher":Ljava/util/regex/Matcher;
    .end local v13    # "hrefText":Ljava/lang/String;
    .end local v14    # "linkURI":Ljava/net/URI;
    .end local v15    # "hash":I
    .end local v16    # "curchild":Lgnu/kawa/util/FileInfo;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 195
    .end local v8    # "currentURI":Ljava/net/URI;
    .end local v9    # "i":I
    .end local v10    # "linkText":Ljava/lang/String;
    .end local v11    # "ancestor":Z
    .local v7, "i":I
    :cond_3
    move-object/from16 v17, v4

    const-string/jumbo v18, "<ul>\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    goto/16 :goto_1

    .line 214
    .local v7, "thisURI":Ljava/net/URI;
    .restart local v8    # "currentURI":Ljava/net/URI;
    .restart local v9    # "i":I
    .restart local v10    # "linkText":Ljava/lang/String;
    .restart local v11    # "ancestor":Z
    .restart local v12    # "linkMatcher":Ljava/util/regex/Matcher;
    .restart local v13    # "hrefText":Ljava/lang/String;
    .restart local v14    # "linkURI":Ljava/net/URI;
    .restart local v15    # "hash":I
    .restart local v16    # "curchild":Lgnu/kawa/util/FileInfo;
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 219
    .end local v12    # "linkMatcher":Ljava/util/regex/Matcher;
    .end local v13    # "hrefText":Ljava/lang/String;
    .end local v14    # "linkURI":Ljava/net/URI;
    .end local v15    # "hash":I
    .end local v16    # "curchild":Lgnu/kawa/util/FileInfo;
    :cond_5
    move-object/from16 v17, v4

    const-string/jumbo v18, "<li>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 220
    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 221
    move/from16 v17, v11

    if-eqz v17, :cond_6

    .line 223
    move-object/from16 v17, v4

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 224
    move-object/from16 v17, v2

    move/from16 v18, v3

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v19, v4

    invoke-virtual/range {v17 .. v19}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    .line 226
    :cond_6
    move-object/from16 v17, v4

    const-string/jumbo v18, "</li>\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    goto :goto_4

    .line 228
    .end local v10    # "linkText":Ljava/lang/String;
    .end local v11    # "ancestor":Z
    :cond_7
    move-object/from16 v17, v4

    const-string/jumbo v18, "</ul>\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 229
    move/from16 v17, v3

    if-nez v17, :cond_8

    .line 230
    move-object/from16 v17, v4

    const-string/jumbo v18, "<!--end-children-toc-->\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 231
    :cond_8
    return-void
.end method
