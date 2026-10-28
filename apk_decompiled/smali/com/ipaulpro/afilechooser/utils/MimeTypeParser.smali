.class public Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;
.super Ljava/lang/Object;
.source "MimeTypeParser.java"


# static fields
.field public static final ATTR_EXTENSION:Ljava/lang/String; = "extension"

.field public static final ATTR_MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final TAG_MIMETYPES:Ljava/lang/String; = "MimeTypes"

.field public static final TAG_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mMimeTypes:Lcom/ipaulpro/afilechooser/utils/MimeTypes;

.field private mXpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private addMimeTypeStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "extension"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "extension":Ljava/lang/String;
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "mimetype"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "mimetype":Ljava/lang/String;
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mMimeTypes:Lcom/ipaulpro/afilechooser/utils/MimeTypes;

    invoke-virtual {v2, v0, v1}, Lcom/ipaulpro/afilechooser/utils/MimeTypes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public fromXml(Ljava/io/InputStream;)Lcom/ipaulpro/afilechooser/utils/MimeTypes;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 47
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 48
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 50
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->parse()Lcom/ipaulpro/afilechooser/utils/MimeTypes;

    move-result-object v1

    return-object v1
.end method

.method public fromXmlResource(Landroid/content/res/XmlResourceParser;)Lcom/ipaulpro/afilechooser/utils/MimeTypes;
    .locals 1
    .param p1, "in"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 57
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->parse()Lcom/ipaulpro/afilechooser/utils/MimeTypes;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lcom/ipaulpro/afilechooser/utils/MimeTypes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Lcom/ipaulpro/afilechooser/utils/MimeTypes;

    invoke-direct {v2}, Lcom/ipaulpro/afilechooser/utils/MimeTypes;-><init>()V

    iput-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mMimeTypes:Lcom/ipaulpro/afilechooser/utils/MimeTypes;

    .line 65
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 67
    .local v0, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mMimeTypes:Lcom/ipaulpro/afilechooser/utils/MimeTypes;

    return-object v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 71
    const-string v2, "MimeTypes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->addMimeTypeStart()V

    .line 82
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 77
    const-string v2, "MimeTypes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1
.end method
