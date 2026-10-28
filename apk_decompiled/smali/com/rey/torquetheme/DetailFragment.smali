.class public Lcom/rey/torquetheme/DetailFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DetailFragment.java"


# static fields
.field private static final ARG_FILE:Ljava/lang/String; = "file"

.field private static final DIR_PATH:Ljava/lang/String; = ".torque/themeDir/"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/rey/torquetheme/MainActivity;

.field private bt_set:Landroid/widget/Button;

.field private fl_loading:Landroid/widget/FrameLayout;

.field private iv:Landroid/widget/ImageView;

.field private mFile:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/rey/torquetheme/DetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rey/torquetheme/DetailFragment;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment;->fl_loading:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rey/torquetheme/DetailFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment;->iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rey/torquetheme/DetailFragment;)Lcom/rey/torquetheme/MainActivity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rey/torquetheme/DetailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rey/torquetheme/DetailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/rey/torquetheme/DetailFragment;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/rey/torquetheme/DetailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/rey/torquetheme/DetailFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/rey/torquetheme/DetailFragment;->openPlayStore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/rey/torquetheme/DetailFragment;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/rey/torquetheme/DetailFragment;->set()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/rey/torquetheme/DetailFragment;
    .locals 3
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Lcom/rey/torquetheme/DetailFragment;

    invoke-direct {v1}, Lcom/rey/torquetheme/DetailFragment;-><init>()V

    .line 52
    .local v1, "fragment":Lcom/rey/torquetheme/DetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "file"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/rey/torquetheme/DetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method

.method private openPlayStore(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 230
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rey/torquetheme/DetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://play.google.com/store/apps/details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rey/torquetheme/DetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 186
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 187
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 191
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 192
    return-void

    .line 187
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v2

    .line 188
    .local v0, "f":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/rey/torquetheme/DetailFragment;->removeFile(Ljava/io/File;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private set()V
    .locals 11

    .prologue
    .line 195
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, ".torque/themeDir/"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .local v5, "themeFolder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    invoke-direct {p0, v5}, Lcom/rey/torquetheme/DetailFragment;->removeFile(Ljava/io/File;)V

    .line 199
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 202
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Lcom/rey/torquetheme/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    iget-object v9, p0, Lcom/rey/torquetheme/DetailFragment;->mFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    .local v7, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v6, 0x0

    .line 204
    .local v6, "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_2

    .line 220
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    .line 222
    invoke-virtual {p0}, Lcom/rey/torquetheme/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "Theme set! Please restart Torque app!"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 226
    .end local v6    # "ze":Ljava/util/zip/ZipEntry;
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_1
    return-void

    .line 205
    .restart local v6    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 206
    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 208
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v2    # "f":Ljava/io/File;
    .end local v6    # "ze":Ljava/util/zip/ZipEntry;
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 211
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 213
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-gtz v4, :cond_4

    .line 216
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 217
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 214
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rey/torquetheme/DetailFragment;->mFile:Ljava/lang/String;

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/rey/torquetheme/DetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rey/torquetheme/DetailFragment;->mFile:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 71
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 81
    const v2, 0x7f030006

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/rey/torquetheme/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/rey/torquetheme/MainActivity;

    iput-object v2, p0, Lcom/rey/torquetheme/DetailFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    .line 85
    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/rey/torquetheme/DetailFragment;->fl_loading:Landroid/widget/FrameLayout;

    .line 86
    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/rey/torquetheme/DetailFragment;->iv:Landroid/widget/ImageView;

    .line 87
    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/rey/torquetheme/DetailFragment;->bt_set:Landroid/widget/Button;

    .line 89
    new-instance v0, Lcom/rey/torquetheme/DetailFragment$1;

    invoke-direct {v0, p0}, Lcom/rey/torquetheme/DetailFragment$1;-><init>(Lcom/rey/torquetheme/DetailFragment;)V

    .line 143
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    iget-object v2, p0, Lcom/rey/torquetheme/DetailFragment;->bt_set:Landroid/widget/Button;

    new-instance v3, Lcom/rey/torquetheme/DetailFragment$2;

    invoke-direct {v3, p0}, Lcom/rey/torquetheme/DetailFragment$2;-><init>(Lcom/rey/torquetheme/DetailFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/rey/torquetheme/DetailFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 172
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 173
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 174
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 175
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 176
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 177
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "file"

    iget-object v1, p0, Lcom/rey/torquetheme/DetailFragment;->mFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/rey/torquetheme/DetailFragment;->mFile:Ljava/lang/String;

    .line 181
    return-void
.end method
