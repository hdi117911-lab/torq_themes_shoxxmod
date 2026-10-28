.class public Lcom/rey/torquetheme/MainFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/torquetheme/MainFragment$PagerAdapter;
    }
.end annotation


# static fields
.field private static final NUM_PAGES:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mListFragment:Lcom/rey/torquetheme/ListFragment;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Lcom/rey/torquetheme/MainFragment$PagerAdapter;

.field private mTitleIndicator:Lcom/viewpagerindicator/TitlePageIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/rey/torquetheme/MainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rey/torquetheme/MainFragment;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static final newInstance()Lcom/rey/torquetheme/MainFragment;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/rey/torquetheme/MainFragment;

    invoke-direct {v0}, Lcom/rey/torquetheme/MainFragment;-><init>()V

    .line 31
    .local v0, "fragment":Lcom/rey/torquetheme/MainFragment;
    return-object v0
.end method


# virtual methods
.method public getListFragment()Lcom/rey/torquetheme/ListFragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/rey/torquetheme/MainFragment;->mListFragment:Lcom/rey/torquetheme/ListFragment;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/rey/torquetheme/ListFragment;->newInstance()Lcom/rey/torquetheme/ListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/rey/torquetheme/MainFragment;->mListFragment:Lcom/rey/torquetheme/ListFragment;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/rey/torquetheme/MainFragment;->mListFragment:Lcom/rey/torquetheme/ListFragment;

    return-object v0
.end method

.method public getPropertiesFragment()Lcom/rey/torquetheme/PropertiesFragment;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/rey/torquetheme/PropertiesFragment;->instance:Lcom/rey/torquetheme/PropertiesFragment;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/rey/torquetheme/PropertiesFragment;->newInstance()Lcom/rey/torquetheme/PropertiesFragment;

    move-result-object v0

    sput-object v0, Lcom/rey/torquetheme/PropertiesFragment;->instance:Lcom/rey/torquetheme/PropertiesFragment;

    .line 70
    :cond_0
    sget-object v0, Lcom/rey/torquetheme/PropertiesFragment;->instance:Lcom/rey/torquetheme/PropertiesFragment;

    return-object v0
.end method

.method public moveToPage(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/rey/torquetheme/MainFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/rey/torquetheme/MainFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/rey/torquetheme/MainFragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 40
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/rey/torquetheme/MainFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 41
    new-instance v1, Lcom/rey/torquetheme/MainFragment$PagerAdapter;

    iget-object v2, p0, Lcom/rey/torquetheme/MainFragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v1, p0, v2}, Lcom/rey/torquetheme/MainFragment$PagerAdapter;-><init>(Lcom/rey/torquetheme/MainFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/rey/torquetheme/MainFragment;->mPagerAdapter:Lcom/rey/torquetheme/MainFragment$PagerAdapter;

    .line 42
    iget-object v1, p0, Lcom/rey/torquetheme/MainFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/rey/torquetheme/MainFragment;->mPagerAdapter:Lcom/rey/torquetheme/MainFragment$PagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 44
    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TitlePageIndicator;

    iput-object v1, p0, Lcom/rey/torquetheme/MainFragment;->mTitleIndicator:Lcom/viewpagerindicator/TitlePageIndicator;

    .line 45
    iget-object v1, p0, Lcom/rey/torquetheme/MainFragment;->mTitleIndicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object v2, p0, Lcom/rey/torquetheme/MainFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 47
    iget-object v1, p0, Lcom/rey/torquetheme/MainFragment;->mTitleIndicator:Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {v1, p0}, Lcom/viewpagerindicator/TitlePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 48
    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 119
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/rey/torquetheme/PropertiesFragment;->instance:Lcom/rey/torquetheme/PropertiesFragment;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    sget-object v0, Lcom/rey/torquetheme/PropertiesFragment;->instance:Lcom/rey/torquetheme/PropertiesFragment;

    invoke-virtual {v0}, Lcom/rey/torquetheme/PropertiesFragment;->loadProperties()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 53
    return-void
.end method
