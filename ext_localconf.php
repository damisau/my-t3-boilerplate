<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

t3lib_extMgm::addTypoScriptSetup('<INCLUDE_TYPOSCRIPT:source="FILE:EXT:monsunmedia_base/Configuration/TypoScript/setup.txt">');
t3lib_extMgm::addTypoScriptConstants('<INCLUDE_TYPOSCRIPT:source="FILE:EXT:monsunmedia_base/Configuration/TypoScript/constants.txt">');
t3lib_extMgm::addPageTSConfig('<INCLUDE_TYPOSCRIPT:source="FILE:EXT:monsunmedia_base/Configuration/PageTS/tsconfig.txt">');
t3lib_extMgm::addUserTSConfig('<INCLUDE_TYPOSCRIPT:source="FILE:EXT:monsunmedia_base/Configuration/UserTS/role.admin.userts">');

@include_once(\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extPath($_EXTKEY, 'Configuration/RealURL/Default.php'));