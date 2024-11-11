.class Lcom/samsung/android/ui/preference/PreferenceInflater;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mDefaultPackages:[Ljava/lang/String;

.field private mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/ui/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/ui/preference/PreferenceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceManager"    # Lcom/samsung/android/ui/preference/PreferenceManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/preference/PreferenceInflater;->init(Lcom/samsung/android/ui/preference/PreferenceManager;)V

    .line 44
    return-void
.end method

.method private createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefixes"    # [Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/samsung/android/ui/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 119
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const-string v1, ": Error inflating class "

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 120
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 121
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    .line 122
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_3

    array-length v5, p2

    if-nez v5, :cond_0

    goto :goto_2

    .line 125
    :cond_0
    const/4 v5, 0x0

    .line 126
    .local v5, "notFoundException":Ljava/lang/ClassNotFoundException;
    array-length v6, p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, p2, v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .local v8, "prefix":Ljava/lang/String;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v9

    .line 131
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    move-object v5, v9

    .line 126
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 134
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    .line 135
    if-nez v5, :cond_2

    .line 136
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "prefixes":[Ljava/lang/String;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    throw v2

    .line 138
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "prefixes":[Ljava/lang/String;
    .restart local p3    # "attrs":Landroid/util/AttributeSet;
    :cond_2
    nop

    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "prefixes":[Ljava/lang/String;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    throw v5

    .line 123
    .end local v5    # "notFoundException":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "prefixes":[Ljava/lang/String;
    .restart local p3    # "attrs":Landroid/util/AttributeSet;
    :cond_3
    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 142
    :cond_4
    sget-object v5, Lcom/samsung/android/ui/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v0, v5

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 144
    sget-object v5, Lcom/samsung/android/ui/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 147
    .local v3, "args":[Ljava/lang/Object;
    aput-object p3, v3, v2

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreference;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 151
    .end local v3    # "args":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 153
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 154
    throw v1

    .line 149
    .end local v1    # "ie":Landroid/view/InflateException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    throw v1
.end method

.method private createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 166
    const/4 v0, -0x1

    const/16 v1, 0x2e

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/preference/PreferenceInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    .local v0, "item":Lcom/samsung/android/ui/preference/SeslPreference;
    goto :goto_0

    .line 169
    .end local v0    # "item":Lcom/samsung/android/ui/preference/SeslPreference;
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/ui/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .restart local v0    # "item":Lcom/samsung/android/ui/preference/SeslPreference;
    :goto_0
    return-object v0

    .line 180
    .end local v0    # "item":Lcom/samsung/android/ui/preference/SeslPreference;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 183
    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class (not found)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 178
    throw v1

    .line 173
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 174
    .local v0, "e":Landroid/view/InflateException;
    throw v0
.end method

.method private init(Lcom/samsung/android/ui/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/samsung/android/ui/preference/PreferenceManager;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    .line 48
    const-string v0, "com.samsung.android.ui.preference."

    const-string v1, "com.mesalabs.cerberus.ui.preference."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/PreferenceInflater;->setDefaultPackages([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private onMergeRoots(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    .locals 1
    .param p1, "givenRoot"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    .param p2, "xmlRoot"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 107
    if-nez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mPreferenceManager:Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->onAttachedToHierarchy(Lcom/samsung/android/ui/preference/PreferenceManager;)V

    .line 109
    return-object p2

    .line 111
    :cond_0
    return-object p1
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/ui/preference/SeslPreference;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/samsung/android/ui/preference/SeslPreference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 191
    .local v0, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_4

    :cond_0
    const/4 v1, 0x1

    if-eq v2, v1, :cond_4

    .line 192
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "name":Ljava/lang/String;
    const-string v3, "intent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Error parsing preference"

    if-eqz v3, :cond_2

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v3, "intent":Landroid/content/Intent;
    nop

    .line 209
    invoke-virtual {p2, v3}, Lcom/samsung/android/ui/preference/SeslPreference;->setIntent(Landroid/content/Intent;)V

    .line 210
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v5, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 205
    .local v4, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4, v3}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 206
    throw v4

    .line 210
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const-string v3, "extra"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/ui/preference/SeslPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v3, p3, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 213
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/ui/preference/PreferenceInflater;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    goto :goto_1

    .line 214
    :catch_1
    move-exception v3

    .line 215
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v5, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 216
    .restart local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4, v3}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 217
    throw v4

    .line 220
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    invoke-direct {p0, v1, p3}, Lcom/samsung/android/ui/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v3

    .line 221
    .local v3, "item":Lcom/samsung/android/ui/preference/SeslPreference;
    move-object v4, p2

    check-cast v4, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->addItemFromInflater(Lcom/samsung/android/ui/preference/SeslPreference;)V

    .line 222
    invoke-direct {p0, p1, v3, p3}, Lcom/samsung/android/ui/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/ui/preference/SeslPreference;Landroid/util/AttributeSet;)V

    .line 224
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "item":Lcom/samsung/android/ui/preference/SeslPreference;
    :goto_1
    goto :goto_0

    .line 226
    :cond_4
    return-void
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 232
    .local v0, "outerDepth":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 233
    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 234
    :cond_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public inflate(ILcom/samsung/android/ui/preference/SeslPreferenceGroup;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 2
    .param p1, "resource"    # I
    .param p2, "root"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 62
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/ui/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 62
    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 65
    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 71
    .local v1, "attrs":Landroid/util/AttributeSet;
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 78
    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 80
    :cond_1
    if-ne v2, v3, :cond_2

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/ui/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v3

    .line 86
    .local v3, "xmlRoot":Lcom/samsung/android/ui/preference/SeslPreference;
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/ui/preference/PreferenceInflater;->onMergeRoots(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    move-result-object v4

    .line 88
    .local v4, "result":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-direct {p0, p1, v4, v1}, Lcom/samsung/android/ui/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/ui/preference/SeslPreference;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v2    # "type":I
    .end local v3    # "xmlRoot":Lcom/samsung/android/ui/preference/SeslPreference;
    nop

    .line 102
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 81
    .end local v4    # "result":Lcom/samsung/android/ui/preference/SeslPreference;
    .restart local v2    # "type":I
    :cond_2
    :try_start_3
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": No start tag found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    throw v3
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .end local v2    # "type":I
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "ex":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    nop

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    throw v3

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Landroid/view/InflateException;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    :catch_1
    move-exception v2

    .line 93
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/view/InflateException;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v3    # "ex":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    nop

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    throw v3

    .line 90
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "ex":Landroid/view/InflateException;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    :catch_2
    move-exception v2

    .line 91
    .local v2, "e":Landroid/view/InflateException;
    nop

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    throw v2

    .line 103
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "e":Landroid/view/InflateException;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/ui/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultPackages([Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # [Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    .line 53
    return-void
.end method
