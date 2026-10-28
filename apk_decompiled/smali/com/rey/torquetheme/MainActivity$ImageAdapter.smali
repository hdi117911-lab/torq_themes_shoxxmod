.class Lcom/rey/torquetheme/MainActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/torquetheme/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;,
        Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private themeFiles:[Ljava/lang/String;

.field final synthetic this$0:Lcom/rey/torquetheme/MainActivity;


# direct methods
.method public constructor <init>(Lcom/rey/torquetheme/MainActivity;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->this$0:Lcom/rey/torquetheme/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 119
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "theme1.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "theme2.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "theme3.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "theme4.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "theme5.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "theme6.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "theme7.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "theme8.zip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "theme9.zip"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "theme10.zip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "theme11.zip"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "theme12.zip"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->themeFiles:[Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    return-void
.end method

.method static synthetic access$0(Lcom/rey/torquetheme/MainActivity$ImageAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rey/torquetheme/MainActivity$ImageAdapter;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->themeFiles:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "screenshot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".zip"

    const-string v3, ".png"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->themeFiles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getFile(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->themeFiles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 161
    move-object v2, p2

    .line 163
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_1

    .line 164
    iget-object v3, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 165
    new-instance v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;

    invoke-direct {v0, p0}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;-><init>(Lcom/rey/torquetheme/MainActivity$ImageAdapter;)V

    .local v0, "holder":Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
    move-object v3, v2

    .line 166
    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->iv:Landroid/widget/ImageView;

    .line 167
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    :goto_0
    iget-object v3, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    if-nez v3, :cond_2

    .line 173
    new-instance v1, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {v1, p0, p1, v3}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;-><init>(Lcom/rey/torquetheme/MainActivity$ImageAdapter;ILandroid/widget/ImageView;)V

    .line 174
    .local v1, "task":Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;
    invoke-virtual {v1}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->start()V

    .line 175
    iput-object v1, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    .line 176
    iget-object v3, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    .end local v1    # "task":Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;
    :cond_0
    :goto_1
    return-object v2

    .line 170
    .end local v0    # "holder":Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;

    .restart local v0    # "holder":Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
    goto :goto_0

    .line 178
    :cond_2
    iget-object v3, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    invoke-virtual {v3}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->getIndex()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 179
    iget-object v3, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->cancel(Z)Z

    .line 181
    new-instance v1, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {v1, p0, p1, v3}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;-><init>(Lcom/rey/torquetheme/MainActivity$ImageAdapter;ILandroid/widget/ImageView;)V

    .line 182
    .restart local v1    # "task":Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;
    invoke-virtual {v1}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->start()V

    .line 183
    iput-object v1, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    .line 185
    iget-object v3, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
