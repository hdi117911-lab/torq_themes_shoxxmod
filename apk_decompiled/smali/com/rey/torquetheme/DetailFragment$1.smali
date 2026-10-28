.class Lcom/rey/torquetheme/DetailFragment$1;
.super Landroid/os/AsyncTask;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/torquetheme/DetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/torquetheme/DetailFragment;


# direct methods
.method constructor <init>(Lcom/rey/torquetheme/DetailFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    .line 89
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    iget-object v4, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v4}, Lcom/rey/torquetheme/DetailFragment;->access$2(Lcom/rey/torquetheme/DetailFragment;)Lcom/rey/torquetheme/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rey/torquetheme/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v5}, Lcom/rey/torquetheme/DetailFragment;->access$3(Lcom/rey/torquetheme/DetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    .local v3, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 104
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 129
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_1
    return-object v0

    .line 106
    .restart local v2    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screenshot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 122
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 111
    .restart local v2    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v3    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "package"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v1, "br":Ljava/io/BufferedReader;
    iget-object v4, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/rey/torquetheme/DetailFragment;->access$4(Lcom/rey/torquetheme/DetailFragment;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 115
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 118
    .end local v1    # "br":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rey/torquetheme/DetailFragment$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$0(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$1(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$1(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$1(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/rey/torquetheme/DetailFragment$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$0(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$1;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$1(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    return-void
.end method
